package com.dabin.week6.demo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
/* import java.io.PrintWriter; */

@WebServlet("/redirect")
public class RedirectServlet extends HttpServlet {


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



		response.sendRedirect("index.jsp");
		response.sendRedirect("/2019211001001016Huangleifan_war_exploded/index.jsp");
        response.sendRedirect("http://www.baidu.com");

    }

}