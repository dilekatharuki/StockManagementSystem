package com.order;

public class Order {

	private String id;
	private String date;
	private String totalPrice;
	private String status;

	public Order(String id, String date, String totalPrice, String status) {
		this.id = id;
		this.date = date;
		this.totalPrice = totalPrice;
		this.status = status;
	}

	public String getId() {
		return id;
	}

	public String getDate() {
		return date;
	}

	public String getTotalPrice() {
		return totalPrice;
	}

	public String getStatus() {
		return status;
	}

}
