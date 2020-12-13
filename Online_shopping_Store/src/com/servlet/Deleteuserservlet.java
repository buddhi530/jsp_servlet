package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.login.CustomerDBUtill;

@WebServlet("/deleteuserservlet")
public class Deleteuserservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		String id = request.getParameter("cusid");
		boolean isTrue;

		isTrue = CustomerDBUtill.deleteuser(id);

		if (isTrue == true) {
			
			
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Your account delete Successfully');");
			out.println("location = 'Register.jsp'");
			out.println("</script>");



		}

		else {

			RequestDispatcher dis = request.getRequestDispatcher("Admindetails.jsp");
			dis.forward(request, response);

		}
	}

}
