package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateCustomerServlet")
public class UpdateCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get parameter values from update customer page
		String id = request.getParameter("cusid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		
		boolean isTrue;
		
	
		isTrue = CustomerDBUtil.updateCustomer(id,name, email, phone, address);
		
		if(isTrue == true) {
			
			List<Customer> cusDetails = CustomerDBUtil.listCusDetails();
			request.setAttribute("cusdetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("manageCustomer.jsp");
			dis.forward(request, response);
		}
		else {
			List<Customer> cusDetails = CustomerDBUtil.listCusDetails();
			request.setAttribute("cusdetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("manageCustomer.jsp");
			dis.forward(request, response);
			
		}
	}

}
