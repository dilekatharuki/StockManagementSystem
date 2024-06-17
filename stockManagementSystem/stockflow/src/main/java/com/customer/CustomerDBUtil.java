package com.customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
//validate customer Id
	public static List<Customer> getCustomer(String id) {

		ArrayList<Customer> cus = new ArrayList<>();
	
		try {
			con = connect.getConnection();
			stmt = con.createStatement();
			String sql = "select *from customer where Customer_Id='" + id + "'";
			 rs = stmt.executeQuery(sql);
			//get the details list of customers
			if (rs.next()) {
				String cusid = rs.getString(1);
				String name = rs.getNString(2);
				String email = rs.getString(3);
				String phone = rs.getNString(4);
				String address = rs.getNString(5);

				Customer c = new Customer(cusid, name, email, phone, address);
				cus.add(c);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return cus;

	}
	
	public static boolean addcustomer(String Customer_Id, String Name, String email, String phone,
			String ShippingAddress) {

		isSuccess = false;

//insert customer details to the database
		try {

			con = connect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into customer values('" + Customer_Id + "','" + Name + "','" + email + "','" + phone
					+ "','" + ShippingAddress + "')";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}
	

	public static boolean updateCustomer(String id, String Name, String email, String phone, String ShippingAddress) {

	

		try {

			con = connect.getConnection();
			stmt = con.createStatement();
			String sql = "update customer set Name='" + Name + "',email='" + email + "',phone='" + phone
					+ "',ShippingAddress='" + ShippingAddress + "'" + "where Customer_Id ='" + id + "'";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;

	}

	public static List<Customer> getCustomerDetails(String id) {

		ArrayList<Customer> cus = new ArrayList<>();

		//check the customer is exit in the table		
		try {
			con = connect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where Customer_Id='" + id + "'";
		    rs = stmt.executeQuery(sql);

			while (rs.next()) {
				String cusid = rs.getString(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String address = rs.getString(5);

				Customer c = new Customer(cusid, name, email, phone, address);
				cus.add(c);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return cus;
	}

	public static boolean deletecustomer(String id) {


		try {
			con = connect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from customer where Customer_Id ='" + id + "'";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}
	
	public static List<Customer> listCusDetails() {
		ArrayList<Customer> customer = new ArrayList<>();

		try {
			con = connect.getConnection();
			stmt = con.createStatement();

			String sql = "Select * From customer";
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String ID = rs.getNString(1);
				String name = rs.getNString(2);
				String email = rs.getNString(3);
				String phone = rs.getNString(4);
				String ShippingAddress = rs.getNString(5);
				Customer c = new Customer(ID, name, email, phone, ShippingAddress);
				customer.add(c);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return customer;
	}
	
	

}
