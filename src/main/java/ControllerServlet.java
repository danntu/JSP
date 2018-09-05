package main.java;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class ControllerServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter writer = resp.getWriter();

        LoginBean loginBean = new LoginBean();
        loginBean.setName(req.getParameter("name"));
        loginBean.setPassword(req.getParameter("password"));
        req.setAttribute("bean",loginBean);
        boolean status = loginBean.validate();
        if (status){
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("login-success.jsp");
            requestDispatcher.forward(req,resp);
        } else{
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("login-error.jsp");
            requestDispatcher.forward(req,resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }
}
