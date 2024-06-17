package com.order;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.customer.connect;

public class orderDBUtil {
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static List<Order> listOrderDetails() {
		ArrayList<Order> order = new ArrayList<>();

		try {
			con = connect.getConnection();
			stmt = con.createStatement();

			String sql = "SELECT * FROM `order`";
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String id = rs.getNString(1);
				String date = rs.getNString(2);
				String totalPrice = rs.getNString(3);
				String status = rs.getNString(4);
				
				Order o = new Order(id, date, totalPrice, status);
				order.add(o);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return order;
	}

}
