package com.jdbc.controller;


import com.jdbc.dao.AbstractDAO;
import com.jdbc.dao.UserDAO;
import com.jdbc.mapper.UserMapper;
import com.jdbc.model.UserModel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(urlPatterns = "/home")
public class HomeController extends HttpServlet {
    private AbstractDAO abstractDAO = new AbstractDAO();
    private UserDAO userDAO = new UserDAO();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("views/home.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String resultMessage = "";
        String resultPost = "danger";;
        try {
           String email = request.getParameter("email");
           String firstName = request.getParameter("firstName");
           String lastName = request.getParameter("lastName");
           if (!userDAO.checkUserExits(email)) {
               int id = userDAO.insertUser(email, firstName, lastName);
               resultMessage = "Insert successfull!";
               resultPost = "success";
           }
           else resultMessage = "email already exists!";

       }
       catch (Exception e) {
           resultMessage = e.getMessage();
       }
        request.setAttribute("resultMessage", resultMessage);
        request.setAttribute("resultPost", resultPost);
        RequestDispatcher rd = request.getRequestDispatcher("views/home.jsp");
        rd.forward(request, response);
    }


}
