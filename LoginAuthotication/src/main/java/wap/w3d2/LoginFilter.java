package wap.w3d2;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(filterName = "LoginFilter",urlPatterns = {"/welcome","/welcome.jsp"},servletNames = {"LoginServlet"})
public class LoginFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {

        HttpServletRequest request  = (HttpServletRequest)req;
        HttpServletResponse response  = (HttpServletResponse)resp;
        String uri=request.getRequestURI();
        System.out.println(uri);

        if(request.getSession() == null|| request.getSession().getAttribute("name") == null){

            request.getSession().setAttribute("Message","Please Login First");
             response.sendRedirect("/login");
             return;
        }
        else
               chain.doFilter(req, resp);
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
