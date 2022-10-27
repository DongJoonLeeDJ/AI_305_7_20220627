package com.store.gdgd.stock;

public class Stock {
	@Override
	public String toString() {
		return "Stock [st_code=" + st_code + ", pd_code=" + pd_code + ", amount=" + amount + ", rec_date=" + rec_date
				+ ", dis_date=" + dis_date + "]";
	}
	
	public int getSt_code() {
		return st_code;
	}
	public void setSt_code(int st_code) {
		this.st_code = st_code;
	}
	public int getPd_code() {
		return pd_code;
	}
	public void setPd_code(int pd_code) {
		this.pd_code = pd_code;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getRec_date() {
		return rec_date;
	}
	public void setRec_date(String rec_date) {
		this.rec_date = rec_date;
	}
	public String getDis_date() {
		return dis_date;
	}
	public void setDis_date(String dis_date) {
		this.dis_date = dis_date;
	}
	private int st_code;
	private int pd_code;
	private int amount;
	private String rec_date;
	private String dis_date;
}
