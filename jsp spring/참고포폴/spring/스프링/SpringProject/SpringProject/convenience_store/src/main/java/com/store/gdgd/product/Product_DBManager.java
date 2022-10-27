package com.store.gdgd.product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.store.gdgd.dbinfo.*;

public class Product_DBManager {
	
	public ArrayList<Product> select() {
		
		ArrayList<Product> list = new ArrayList<Product>();
		Connection conn = null;	
		PreparedStatement pstmt = null;	
		ResultSet rs = null;	
		
		try {
			Class.forName(DBInfo.mysql_class);
			conn = DriverManager.getConnection(DBInfo.mysql_url,DBInfo.mysql_id,DBInfo.mysql_pw);
			pstmt = conn.prepareStatement("select * from product limit 0, 100");
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Product ppu = new Product();
				ppu.setPd_code(rs.getInt("pd_code"));
				ppu.setPd_name(rs.getString("name"));
				ppu.setPd_price(rs.getString("price"));
				ppu.setPd_type(rs.getString("type"));
				ppu.setPd_classific(rs.getString("classific"));
				ppu.setPd_exdate(rs.getInt("exdate"));
				list.add(ppu);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		finally {
			
			try {
				if (rs!= null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			}catch (Exception e) {}
		}
		return list;
	}
	
	public ArrayList<Product> select2(String prod_name) {
		
		ArrayList<Product> list = new ArrayList<Product>();
		Connection conn = null;	
		PreparedStatement pstmt = null;	
		ResultSet rs = null;	
		
		try {
			Class.forName(DBInfo.mysql_class);
			conn = DriverManager.getConnection(DBInfo.mysql_url,DBInfo.mysql_id,DBInfo.mysql_pw);
			pstmt = conn.prepareStatement("select * from product where name like \"%" + prod_name + "%\" limit 0, 100");
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Product ppu = new Product();
				ppu.setPd_code(rs.getInt("pd_code"));
				ppu.setPd_name(rs.getString("name"));
				ppu.setPd_price(rs.getString("price"));
				ppu.setPd_type(rs.getString("type"));
				ppu.setPd_classific(rs.getString("classific"));
				ppu.setPd_exdate(rs.getInt("exdate"));
				list.add(ppu);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		finally {
			
			try {
				if (rs!= null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			}catch (Exception e) {}
		}
		return list;
	}
}

