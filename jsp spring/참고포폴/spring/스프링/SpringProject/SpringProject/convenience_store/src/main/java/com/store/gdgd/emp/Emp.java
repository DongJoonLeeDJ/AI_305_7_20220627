package com.store.gdgd.emp;

public class Emp {
	private String emp_id;
	private String pw;
	private String name;
	private String ssnumber;
	private String phone;
	private String address;
	private String withdrawal_date;
	//ê²Œí„°?„¸?„°
	public String getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSsnumber() {
		return ssnumber;
	}
	public void setSsnumber(String ssnumber) {
		this.ssnumber = ssnumber;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getWithdrawal_date() {
		return withdrawal_date;
	}
	public void setWithdrawal_date(String withdrawal_date) {
		this.withdrawal_date = withdrawal_date;
	}
	//toString
	@Override
	public String toString() {
		return "Emp [emp_id=" + emp_id + ", pw=" + pw + ", name=" + name + ", ssnumber=" + ssnumber + ", phone=" + phone
				+ ", address=" + address + ", withdrawal_date=" + withdrawal_date + "]";
	}
}
