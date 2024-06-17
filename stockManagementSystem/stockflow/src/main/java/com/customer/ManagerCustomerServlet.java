package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ManagerCustomerServlet")
public class ManagerCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			List<Customer> cusdetails = CustomerDBUtil.listCusDetails();
			request.setAttribute("cusdetails", cusdetails);

		} catch (Exception e) {
			e.printStackTrace();
		}

		RequestDispatcher dis = request.getRequestDispatcher("/manageCustomer.jsp");
		dis.forward(request, response);
	}

}
