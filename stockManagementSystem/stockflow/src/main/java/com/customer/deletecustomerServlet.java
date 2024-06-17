package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deletecustomerServlet")
public class deletecustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Get the customer ID to be deleted from the deletecustomer page
		String id = request.getParameter("cusid");
		boolean isTrue;
		
	
		isTrue =CustomerDBUtil.deletecustomer(id);
		
		if(isTrue == true) {
			// If the customer was successfully deleted, list customer details and forward to 'manageCustomer.jsp'
			
			List<Customer> cusDetails = CustomerDBUtil.listCusDetails();
			request.setAttribute("cusdetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("manageCustomer.jsp");
			dis.forward(request, response);
		}else {
			// If there was an issue also list customer details and forward to 'manageCustomer.jsp'
			
			List<Customer> cusDetails = CustomerDBUtil.listCusDetails();
			request.setAttribute("cusdetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("manageCustomer.jsp");
			dis.forward(request, response);
		}
	}

}
