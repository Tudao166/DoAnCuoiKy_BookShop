<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:setLocale value="vi_VN"/>
<!DOCTYPE html>
<html lang="vi">

<head>
  <jsp:include page="_meta.jsp"/>
  <title>Thêm thể loại</title>
  <!-- Thêm Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
<jsp:include page="_headerAdmin.jsp"/>

<section class="section-content">
  <div class="container">
    <header class="section-heading py-4">
      <h3 class="section-title text-center">Thêm thể loại</h3>
    </header> <!-- section-heading.// -->

    <main class="row mb-5">
      <form class="col-lg-6 mx-auto" method="POST" action="${pageContext.request.contextPath}/admin/categoryManager/create"
            enctype="multipart/form-data">
        <c:if test="${not empty requestScope.successMessage}">
          <div class="alert alert-success mb-3" role="alert">
            ${requestScope.successMessage}
          </div>
        </c:if>
        <c:if test="${not empty requestScope.errorMessage}">
          <div class="alert alert-danger mb-3" role="alert">
            ${requestScope.errorMessage}
          </div>
        </c:if>
        
        <!-- Tên thể loại -->
        <div class="mb-3">
          <label for="category-name" class="form-label">Tên thể loại <span class="text-danger">*</span></label>
          <input type="text"
                 class="form-control ${not empty requestScope.violations.nameViolations
                   ? 'is-invalid' : (not empty requestScope.category.name ? 'is-valid' : '')}"
                 id="category-name"
                 name="name"
                 value="${requestScope.category.name}"
                 required>
          <c:if test="${not empty requestScope.violations.nameViolations}">
            <div class="invalid-feedback">
              <ul class="list-unstyled">
                <c:forEach var="violation" items="${requestScope.violations.nameViolations}">
                  <li>${violation}</li>
                </c:forEach>
              </ul>
            </div>
          </c:if>
        </div>
        
        <!-- Mô tả thể loại -->
        <div class="mb-3">
          <label for="category-description" class="form-label">Mô tả thể loại</label>
          <textarea class="form-control ${not empty requestScope.violations.descriptionViolations
                      ? 'is-invalid' : (not empty requestScope.category.description ? 'is-valid' : '')}"
                    id="category-description"
                    rows="5"
                    name="description">${requestScope.category.description}</textarea>
          <c:if test="${not empty requestScope.violations.descriptionViolations}">
            <div class="invalid-feedback">
              <ul class="list-unstyled">
                <c:forEach var="violation" items="${requestScope.violations.descriptionViolations}">
                  <li>${violation}</li>
                </c:forEach>
              </ul>
            </div>
          </c:if>
        </div>

        <!-- Hình thể loại -->
        <div class="mb-3">
          <label for="category-imageName" class="form-label">Hình thể loại</label>
          <input type="file"
                 class="form-control"
                 id="category-imageName"
                 name="image"
                 accept="image/*">
        </div>
        
        <!-- Nút gửi và reset -->
        <div class="d-flex justify-content-between">
          <button type="submit" class="btn btn-primary mb-3">
            Thêm
          </button>
          <button type="reset"
                  class="btn btn-warning mb-3"
                  onclick="return confirm('Bạn có muốn để giá trị mặc định?')">
            Mặc định
          </button>
        </div>
        
        <!-- Nút hủy -->
        <a class="btn btn-danger mb-3"
           href="${pageContext.request.contextPath}/admin/categoryManager"
           role="button"
           onclick="return confirm('Bạn có muốn hủy?')">
          Hủy
        </a>
      </form>
    </main>
  </div> <!-- container.// -->
</section> <!-- section-content.// -->

<jsp:include page="_footerAdmin.jsp"/>

<!-- Thêm Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js"></script>
</body>

</html>
