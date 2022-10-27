package com.store.gdgd.basket;

public class BasketVO {

	private String c_id;
	public String getC_id() {
		return c_id;
	}
	public void setC_id(String c_id) {
		this.c_id = c_id;
	}
	public int getPd_code() {
		return pd_code;
	}
	public void setPd_code(int pd_code) {
		this.pd_code = pd_code;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getPd_name() {
		return pd_name;
	}
	public void setPd_name(String pd_name) {
		this.pd_name = pd_name;
	}
	public String getPd_price() {
		return pd_price;
	}
	public void setPd_price(String pd_price) {
		this.pd_price = pd_price;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	@Override
	public String toString() {
		return "BasketVO [c_id=" + c_id + ", pd_code=" + pd_code + ", quantity=" + quantity + ", m_id=" + m_id
				+ ", pd_name=" + pd_name + ", pd_price=" + pd_price + ", money=" + money + "]";
	}
	private int pd_code;
	private int quantity;
	private String m_id;
	private String pd_name;
	private String pd_price;
	private int money;
	

	

	
}
