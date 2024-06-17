package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CustomerAdd")
public class CustomerAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		// Retrieve user input data from the request
		String CustomerId = request.getParameter("id");
		String Name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String ShippingAddress = request.getParameter("address");
		
		// Variables for checking if a customer already exists and if the customer was added
		      boolean isTrue;
		
			isTrue = CustomerDBUtil.addcustomer(CustomerId, Name, email, phone, ShippingAddress);
		
			if(isTrue==true) {
				// If the customer was successfully added, list customer details and forward to 'manageCustomer.jsp'
				List<Customer> cusDetails = CustomerDBUtil.listCusDetails();
				request.setAttribute("cusdetails", cusDetails);
				
				RequestDispatcher dis = request.getRequestDispatcher("manageCustomer.jsp");
				dis.forward(request, response);
				
			}else {
				// If there was an erro for adding, also list customer details and forward to 'manageCustomer.jsp'
				List<Customer> cusDetails = CustomerDBUtil.listCusDetails();
				request.setAttribute("cusdetails", cusDetails);
				
				RequestDispatcher dis = request.getRequestDispatcher("manageCustomer.jsp");
				dis.forward(request, response);
			}
			
			
		}
		

	}


