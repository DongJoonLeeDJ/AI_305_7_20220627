package com.javalec.ex.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.javalec.ex.dto.BDto;

public class BDao {

	DataSource ds;
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	//context.xml의 Resource 활용한 것(=커넥션 풀 활용)
	public BDao() {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource)ctx.lookup
					("java:comp/env/jdbc/mysql");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<BDto> list() {
		ArrayList<BDto> dtos = new ArrayList<BDto>();
		try {
			String sql = "select bId, bName, bTitle,"
					+ "bContent, bDate, bHit,"
					+ "bGroup, bStep, bIndent from "
					+ "mvc_board order by bGroup desc,"
					+ "bStep asc";
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return dtos;
	}
	
}












