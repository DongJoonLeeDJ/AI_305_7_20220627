package com.store.gdgd.stock;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.store.gdgd.dbinfo.*;

public class Stock_DBManager {
	public ArrayList<Stock> select() {

		ArrayList<Stock> list = new ArrayList<Stock>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			Class.forName(DBInfo.mysql_class);
			conn = DriverManager.getConnection(DBInfo.mysql_url, DBInfo.mysql_id, DBInfo.mysql_pw);
			pstmt = conn.prepareStatement("select * from stock limit 0, 100");
			rs = pstmt.executeQuery();

			while (rs.next()) {
				Stock stu = new Stock();
				stu.setSt_code(rs.getInt("st_code"));
				stu.setPd_code(rs.getInt("pd_code"));
				stu.setAmount(rs.getInt("amount"));
				stu.setRec_date(rs.getString("rec_date"));
				stu.setDis_date(rs.getString("dis_date"));
				list.add(stu);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		finally {

			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
		return list;
	}
}
