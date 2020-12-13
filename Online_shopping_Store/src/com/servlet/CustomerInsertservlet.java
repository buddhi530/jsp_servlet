package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.login.CustomerDBUtill;

@WebServlet("/CustomerInsert")
public class CustomerInsertservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("uname");
		String lastname = request.getParameter("lname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String password = request.getParameter("pwd");
		String type = request.getParameter("type");
		boolean isTrue;

		isTrue = CustomerDBUtill.insertCus(username, lastname, email, phone, password, type);

		if (isTrue == true && type == "Admin") {
			RequestDispatcher dis = request.getRequestDispatcher("su.jsp");
			dis.forward(request, response);
		} else if (isTrue == true && type == "User") {
			RequestDispatcher dis3 = request.getRequestDispatcher("Home.jsp");
			dis3.forward(request, response);
		} else {
			RequestDispatcher dis1 = request.getRequestDispatcher("Login.jsp");
			dis1.forward(request, response);
		}

	}

}
