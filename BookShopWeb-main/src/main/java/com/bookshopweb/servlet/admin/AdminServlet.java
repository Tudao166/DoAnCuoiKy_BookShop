package com.bookshopweb.servlet.admin;

import com.bookshopweb.service.UserService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "AdminServlet", value = "/admin")
public class AdminServlet extends HttpServlet {
    private final UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy tham số từ request
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");
        String groupBy = request.getParameter("groupBy"); // Giá trị: "day", "month", "year"

        // Chuẩn bị dữ liệu thống kê doanh thu
        Map<String, Double> revenueData = new HashMap<>();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat monthFormat = new SimpleDateFormat("yyyy-MM");
        SimpleDateFormat yearFormat = new SimpleDateFormat("yyyy");
    }
}