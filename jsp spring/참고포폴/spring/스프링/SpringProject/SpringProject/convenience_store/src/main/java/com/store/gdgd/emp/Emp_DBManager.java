package com.store.gdgd.emp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.store.gdgd.dbinfo.*;

public class Emp_DBManager {
	public void Emp_Signin(String employee_id,String name,String ssnumber,String phone,String address,String Withdrawal_date) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DriverManager.getConnection(DBInfo.mysql_url, DBInfo.mysql_id, DBInfo.mysql_pw);
			Class.forName(DBInfo.mysql_class);
			
			pstmt = conn.prepareStatement(
					"INSERT INTO "+ 
					"employee "+
					"(EMPLOYEE_ID,NAME,SSNUMBER,PHONE,ADDRESS,WITHDRAWAL_DATE)"+
					"VALUES "+
					"(?,?,?,?,?,?)");
			
			pstmt.setString(1,employee_id);
			pstmt.setString(2,name);
			pstmt.setString(3,ssnumber);
			pstmt.setString(4,phone);
			pstmt.setString(5,address);
			pstmt.setString(6,Withdrawal_date);
			pstmt.executeUpdate();
			
			System.out.println("ÔøΩÏî™Êø°Ïíñ?Ç§ÔøΩÍµπ?");
		}catch (Exception e) {
			e.printStackTrace();
			
		}finally {
			try {
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception e) {
				
			}
		}
	}
	public Emp ckLogin(String emp_id,String pw) {
		Emp emp = null;
		
		Connection conn =  null;	// DB ?ó∞Í≤∞Í∞ùÏ≤?
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			// oracle mysql mssql
			Class.forName(DBInfo.mysql_class);
			
			conn = 
DriverManager.getConnection(DBInfo.mysql_url, DBInfo.mysql_id, DBInfo.mysql_pw);
			
			pstmt = conn.prepareStatement(""
							+ "SELECT * FROM teamproject.employee " 
							+ " WHERE employee_ID=? AND PW=? "
							+ "");
			pstmt.setString(1, emp_id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				emp = new Emp();
				emp.setEmp_id(emp_id);
				emp.setPw(pw);
				emp.setName(rs.getString("name"));
				emp.setPhone(rs.getString("phone"));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try{
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception ex){
				
			}
		}
		return emp;
	}
}
