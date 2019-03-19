package controller;

import services.Services;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;


public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("username");
        String password = request.getParameter("password");
        if (userName != null && userName.trim().length() > 0 && password != null && password.trim().length() > 0) {
            boolean success = Services.AUTHENTICATION_SERVICE.login(userName.trim(), password.trim());
            if (success) {
                if (request.getParameter("remember") != null) {
                    String remember = request.getParameter("remember");
                    Cookie cUserName = new Cookie("cookuser", userName.trim());
                    Cookie cPass = new Cookie("cookpass", password.trim());
                    Cookie cRemember = new Cookie("cookrem", remember.trim());
                    cUserName.setMaxAge(60 * 60 * 24 * 30);//30 days
                    cPass.setMaxAge(60 * 60 * 24 * 30);
                    cRemember.setMaxAge(60 * 60 * 24 * 30);
                    response.addCookie(cUserName);
                    response.addCookie(cPass);
                    response.addCookie(cRemember);
                }
                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("sessuser", userName.trim());
                response.sendRedirect("/dashboard");
            } else {
                System.out.println("Authentication failure.");
                request.setAttribute("msg", "Authentication failure.");
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
                requestDispatcher.forward(request, response);
            }
        } else {
            System.out.println("Username and Password are required fields.");
            request.setAttribute("msg", "Username and Password are required fields.");
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
            requestDispatcher.forward(request, response);
        }
    }
}