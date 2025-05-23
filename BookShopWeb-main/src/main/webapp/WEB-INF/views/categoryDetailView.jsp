<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:setLocale value="vi_VN"/>
<!DOCTYPE html>
<html lang="vi">

<head>
  <jsp:include page="_meta.jsp"/>
  <title>Thông tin thể loại #${requestScope.category.id}</title>
</head>

<body>
  <jsp:include page="_headerAdmin.jsp"/>

  <!-- Section Thông tin thể loại -->
  <section class="section-content">
    <div class="container">
      <header class="section-heading py-4">
        <h3 class="section-title text-center">Thông tin thể loại</h3>
      </header> <!-- section-heading.// -->

      <div class="card mb-5 shadow-sm">
        <div class="card-body">
          <dl class="row">
            <!-- ID thể loại -->
            <dt class="col-md-3">ID</dt>
            <dd class="col-md-9">${requestScope.category.id}</dd>

            <!-- Tên thể loại -->
            <dt class="col-md-3">Tên thể loại</dt>
            <dd class="col-md-9">
              <a href="${pageContext.request.contextPath}/category?id=${requestScope.category.id}" 
                 target="_blank" class="text-primary">
                ${requestScope.category.name}
              </a>
            </dd>

            <!-- Mô tả thể loại -->
            <dt class="col-md-3">Mô tả thể loại</dt>
            <dd class="col-md-9">${requestScope.category.description}</dd>

            <!-- Hình ảnh thể loại -->
            <dt class="col-md-3">Hình thể loại</dt>
            <dd class="col-md-9">
              <c:choose>
                <c:when test="${empty requestScope.category.imageName}">
                  <img width="50" src="${pageContext.request.contextPath}/img/50px.png" alt="No Image">
                </c:when>
                <c:otherwise>
                  <img width="50" src="${pageContext.request.contextPath}/image/${requestScope.category.imageName}" 
                       alt="${requestScope.category.imageName}">
                </c:otherwise>
              </c:choose>
            </dd>
          </dl>
        </div>
      </div> <!-- card.// -->
    </div> <!-- container.// -->
  </section> <!-- section-content.// -->

  <jsp:include page="_footerAdmin.jsp"/>
</body>

</html>
