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
import javax.servlet.http.HttpSession;

import com.login.Customer;
import com.login.CustomerDBUtill;

@WebServlet("/Loginservlet")
public class Loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		String name = request.getParameter("username");
		String pass = request.getParameter("pwd");
		String tpe = request.getParameter("type");

		if (tpe.equals("Admin")) {
			List<Customer> admindetails = CustomerDBUtill.validate(name, pass, tpe);
			request.setAttribute("AdminDetails", admindetails);

			if (admindetails.size() > 0) {
				HttpSession session = request.getSession();
				session.setAttribute("username", name);

				RequestDispatcher dis = request.getRequestDispatcher("Admindetails.jsp");
				dis.forward(request, response);
			} else {

				out.println("<script type = 'text/javascript'>");
				out.println("alert('Your username or password is Incorrect');");
				out.println("location = 'Login.jsp'");
				out.println("</script>");

			}

		} else if (tpe.equals("User")) {
			List<Customer> userdetails = CustomerDBUtill.validate(name, pass, tpe);
			request.setAttribute("UserDetails", userdetails);

			if (userdetails.size() > 0) {
				HttpSession session = request.getSession();
				session.setAttribute("username", name);
				RequestDispatcher dis = request.getRequestDispatcher("Userdetails.jsp");
				dis.forward(request, response);
			} else {

				out.println("<script type = 'text/javascript'>");
				out.println("alert('Your username or password is Incorrect');");
				out.println("location = 'Login.jsp'");
				out.println("</script>");

			}
		}

	}

}
