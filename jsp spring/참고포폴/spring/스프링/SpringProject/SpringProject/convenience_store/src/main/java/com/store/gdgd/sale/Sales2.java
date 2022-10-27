package com.store.gdgd.sale;

public class Sales2 {
	private String pd_name;
	private int pd_price;
	private int quantity;
	private int totalPrice;
	
	@Override
	public String toString() {
		return "Sales2 [pd_name=" + pd_name + ", pd_price=" + pd_price + ", quantity=" + quantity + ", totalPrice=" + totalPrice
				+ ", toString()=" + super.toString() + "]";
	}

	public String getPd_name() {
		return pd_name;
	}
	public void setPd_name(String pd_name) {
		this.pd_name = pd_name;
	}
	public int getPd_price() {
		return pd_price;
	}
	public void setPd_price(int pd_price) {
		this.pd_price = pd_price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

}
