package com.javalec.daodto;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	
	private Connection conn = null;
	private Statement stmt = null;
	private ResultSet rs = null;
	private PreparedStatement pstmt = null;
	
	private DataSource ds = null;
	public MemberDAO() {
		try {
			Context ctx = new InitialContext();
			ds = 
			(DataSource)ctx.lookup("java:comp/env/jdbc/mysql");
			
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}
	
	public ArrayList<MemberDTO> memberSelect() {
		ArrayList<MemberDTO> dtos = new ArrayList<MemberDTO>();
		conn = null;
		stmt = null;
		try {
			//conn = DriverManager.getConnection(url,uid,upw);
			conn= ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from memberdto");
			while(rs.next()) {
				MemberDTO dto = new MemberDTO();
				dto.setName(rs.getString("name"));
				dto.setId(rs.getString("id"));
				dto.setPw(rs.getString("pw"));
				dto.setGender(rs.getString("gender"));
				dtos.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace(); //Ȥ�� �� ���� ���
		} finally { 
			try {
				rs.close();
				stmt.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return dtos;
	}
	
	
	public int memberInsert(MemberDTO m) {
		int result = -1;
		conn = null;
		pstmt = null;
		try {
			conn= ds.getConnection();
			String query = 
					"insert into memberDTO values(?,?,?,?)";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, m.getName());
			pstmt.setString(2, m.getId());
			pstmt.setString(3, m.getPw());
			pstmt.setString(4, m.getGender());
			result=pstmt.executeUpdate();//�������༺������
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return result;
		
	}
	
	//memberdto ���̺��� ���� �ϳ� ���� ��. '�ϳ�' ������ �´�.
	public MemberDTO checkMember(MemberDTO m) {
		MemberDTO dto = new MemberDTO();
		conn = null;
		pstmt = null; //preparestatement
		try {
			conn= ds.getConnection();
			String query = "select * from memberdto where id=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, m.getId());
			rs = pstmt.executeQuery();
			rs.next(); //1�� �о����
			dto.setName(rs.getString("name"));
			dto.setId(rs.getString("id"));
			dto.setPw(rs.getString("pw"));
			dto.setGender(rs.getString("gender"));
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
		return dto;
	}

	public int memberUpdate(MemberDTO m) {
		int result = -1;
		conn = null;
		pstmt = null;
		try {
			conn= ds.getConnection();
			String query = 
					"update memberdto set name=?, gender=? where id=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, m.getName());
			pstmt.setString(2, m.getGender());
			pstmt.setString(3, m.getId());
			result=pstmt.executeUpdate();//�������༺������
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return result;
		
	
		// TODO Auto-generated method stub
		
	}
	
	

}















