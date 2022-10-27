package com.store.gdgd.product;

public class Product {
	
	@Override
	public String toString() {
		return "Product [pd_code=" + pd_code + ", pd_name=" + pd_name + ", pd_price=" + pd_price + ", pd_type="
				+ pd_type + ", pd_classific=" + pd_classific + ", pd_exdate=" + pd_exdate + "]";
	}
	
	public int getPd_code() {
		return pd_code;
	}
	public void setPd_code(int pd_code) {
		this.pd_code = pd_code;
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
	public String getPd_type() {
		return pd_type;
	}
	public void setPd_type(String pd_type) {
		this.pd_type = pd_type;
	}
	public String getPd_classific() {
		return pd_classific;
	}
	public void setPd_classific(String pd_classific) {
		this.pd_classific = pd_classific;
	}
	public int getPd_exdate() {
		return pd_exdate;
	}
	public void setPd_exdate(int pd_exdate) {
		this.pd_exdate = pd_exdate;
	}
	
	private int pd_code;
	private String pd_name;
	private String pd_price;
	private String pd_type;
	private String pd_classific;
	private int pd_exdate;
}
