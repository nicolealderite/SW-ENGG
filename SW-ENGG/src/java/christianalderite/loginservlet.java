package christianalderite;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Christian
 */
@WebServlet(urlPatterns = {"/loginservlet"})
public class loginservlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        String fname=request.getParameter("firstname");
        String lname=request.getParameter("lastname");
        
        loginmodel loginobject = new loginmodel();
        loginobject.setEmail(email);
        loginobject.setPassword(password);
        loginobject.setFirstName(fname);
        loginobject.setLastName(lname);
        
        request.setAttribute("newuser",loginobject);
        RequestDispatcher rd = request.getRequestDispatcher("loginsuccess.jsp");
        rd.forward(request, response);
    }


}
