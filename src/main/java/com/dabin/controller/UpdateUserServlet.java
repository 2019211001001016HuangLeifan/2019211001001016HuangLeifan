package com.dabin.controller;

import com.dabin.dao.IUserDao;
import com.dabin.dao.UserDao;
import com.dabin.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

@WebServlet(name = "UpdateUserServlet", value = "/updateUser")
public class UpdateUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name,password,email,gender;
        Integer id = Integer.valueOf(request.getParameter("id"));
        name = request.getParameter("username");
        password = request.getParameter("password");
        email = request.getParameter("email");
        gender = request.getParameter("gender");
        String date = request.getParameter("birthday");
        User user = new User(id, name, password, email, gender, date);

        IUserDao iUserDao = new UserDao();
        try {
            Connection con = null;
            int i = iUserDao.updateUser(con, user);
            if (i != 0){
                request.getSession().setAttribute("user",iUserDao.findById(con,id));
                request.getRequestDispatcher("WEB-INF/views/userInfo.jsp").forward(request, response);
            }else {
                request.setAttribute("message","update Error!!!");
                request.getRequestDispatcher("WEB-INF/views/updateUser.jsp").forward(request, response);
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }
}
