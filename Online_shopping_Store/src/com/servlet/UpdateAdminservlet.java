package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.login.Customer;
import com.login.CustomerDBUtill;

/**
 * Servlet implementation class UpdateAdminservlet
 */
@WebServlet("/UpdateAdminservlet")
public class UpdateAdminservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		

		String id = request.getParameter("adminid");
		String uname = request.getParameter("uname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String password = request.getParameter("pass");

		boolean istrue;

		istrue = CustomerDBUtill.updateAdmin(id, uname, lname, email, phone, password);

		if (istrue == true) {

			List<Customer> AdminDetails = CustomerDBUtill.getadmindetails(id);
			request.setAttribute("AdminDetails", AdminDetails);
			RequestDispatcher dis = request.getRequestDispatcher("Admindetails.jsp");
			dis.forward(request, response);
			
		

			
			
			
		} else {
			RequestDispatcher dis = request.getRequestDispatcher("UpdateAdmin.jsp");
			dis.forward(request, response);
		}

	}

}
