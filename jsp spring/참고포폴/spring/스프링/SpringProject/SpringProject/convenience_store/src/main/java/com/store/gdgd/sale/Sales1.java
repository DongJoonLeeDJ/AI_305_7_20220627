package com.store.gdgd.sale;

import java.sql.Timestamp;

public class Sales1 {

	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public int getSales_number() {
		return sales_number;
	}
	public void setSales_number(int sales_number) {
		this.sales_number = sales_number;
	}
	public String getPayment_method_type() {
		return payment_method_type;
	}
	public void setPayment_method_type(String payment_method_type) {
		this.payment_method_type = payment_method_type;
	}

	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	private String cid;
	private int sales_number;
	private int totalPrice;
	private String payment_method_type;
	private Timestamp date;
}
