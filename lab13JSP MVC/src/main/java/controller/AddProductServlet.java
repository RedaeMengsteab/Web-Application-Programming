package controller;

import model.Product;
import services.Services;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddProductServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("addProduct.jsp");
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String no = request.getParameter("no");
        String type = request.getParameter("type");
        String desc = request.getParameter("desc");
        String test = request.getParameter("test");

        Product product = new Product(name, no, Integer.parseInt(test), type, desc);

        Services.PRODUCT_SERVICE.insert(product);
        response.sendRedirect("/dashboard");
    }

}