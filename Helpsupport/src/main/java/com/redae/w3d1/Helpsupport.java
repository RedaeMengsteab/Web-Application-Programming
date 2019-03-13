package com.redae.w3d1;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Helpsupport")
public class Helpsupport extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext sc=this.getServletContext();
        String supportemail=sc.getInitParameter("support-email");
        long Support_ticket_id=(long)(Math.random()*1000);
        PrintWriter out=response.getWriter();
        out.print("<html><head><title>Test</title></head><body>");
        out.print("Thank you! "+ request.getParameter("name")+" for contacting us. We should receive reply from us with " +
                "in 24 hrs in your email address "+request.getParameter("email")+" . Let us know in our support email "+ supportemail +
                "  if you don’t receive reply within 24 hrs. Please be sure to attach your reference "+ Support_ticket_id +" in your email.");
        out.print("</body></html>");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
//        out.print("<html><head><title>Test</title></head><body>");
//        out.print("<form method='post'>");
//        out.print("<label>Name<input type='text' name='name'/></label><br>");
//        out.print("<label>Email<input type='text' name='email'/></label><br>");
//        out.print("<label>Problem:<input type='text' name='problem'/></label><br>");
//        out.print("<label>Problem Description:</label><textarea rows='4' cols='50'></textarea><br>");
//        out.print("<input type='submit' value='help'/>");
//        out.print("</form>");
//        out.print("</body></html>");
        //getting a RequestDispather
        RequestDispatcher dispatcher=request.getRequestDispatcher("support.jsp");
        //forward to jsp
        dispatcher.forward(request,response);

    }
}
