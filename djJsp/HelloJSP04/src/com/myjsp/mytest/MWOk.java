package com.myjsp.mytest;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MWOk
 */
@WebServlet("/MWOk")
public class MWOk extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MWOk() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession httpSession;
		httpSession = request.getSession();
		String strID = 
				(String)httpSession.getAttribute("id");
		String strQuery = String.format
				("delete from member where id='%s'", strID);
		System.out.println(strID+strQuery);
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); //jar에 있는 db 연결 소스를 참조하는 것
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		Connection conn = null; //DB 연결에 관련된 객체들
		Statement stmt = null;
		ResultSet rs = null;
		try {
			//db연결에 필요한 정보들
			//db위치, 스키마이름, 인코딩 등
			String jdbcDriver = "jdbc:mysql://localhost:3306/jspdb?" + "useUnicode=true&characterEncoding=utf8&"
					+ "serverTimezone=UTC";
			String dbUser = "root";
			String dbPass = "1234";
			
			//연결을 만듦
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			stmt = conn.createStatement(); // 쿼리문 실행 관련 객체 생성
			int i = stmt.executeUpdate(strQuery); //db에 쿼리보냄
			if (i == 1) { 
				System.out.println("성공");
				httpSession.invalidate();
				response.sendRedirect("login.html");
			} else {
				System.out.println("실패");
				httpSession.invalidate();
				response.sendRedirect("login.html");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally { //db 호출하고 쿼리문 날렸으면 무조건 닫아줘야 함
			try {   //그래서 다른 사용자들도 쓰고 다시 쓸 수 있다.
				stmt.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}

}







