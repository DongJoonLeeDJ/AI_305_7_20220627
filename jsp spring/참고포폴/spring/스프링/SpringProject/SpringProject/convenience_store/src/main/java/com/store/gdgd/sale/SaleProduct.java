package com.store.gdgd.sale;

public class SaleProduct {
	

	String classific;
	String item_name;
	int totalAmount;
	int ranking;
	
	
	public int getRanking() {
		return ranking;
	}
	public void setRanking(int ranking) {
		this.ranking = ranking;
	}
	public String getClassific() {
		return classific;
	}
	public void setClassific(String classific) {
		this.classific = classific;
	}
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	public int getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(int totalAmount) {
		this.totalAmount = totalAmount;
	}

	@Override
	public String toString() {
		return "SaleProduct [classific=" + classific + ", item_name=" + item_name + ", totalAmount=" + totalAmount
				+ ", ranking=" + ranking + ", toString()=" + super.toString() + "]";
	}
}
