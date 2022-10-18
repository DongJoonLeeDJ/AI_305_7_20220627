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
 * Servlet implementation class LoginOk
 */
@WebServlet("/LogInOk")
public class LogInOk extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogInOk() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doAction(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doAction(request, response);
	}
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("utf-8");
		String strID = request.getParameter("id");
		String strPW = request.getParameter("pw");
		
		System.out.println(strID + strPW);
		
		String strQuery = String.format
				("select * from member where id='%s' and pw='%s'",
				strID,strPW);
		
		System.out.println(strQuery);
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
			
			rs = stmt.executeQuery(strQuery);
			
			rs.next(); //한 줄 읽어들임
			
			//테이블에서 값을 읽어옴
			String strName = rs.getString("name");//getNString 아님
			String strPhone = rs.getString("hp");
			String strGender = rs.getString("gender");
			String strHobby = rs.getString("hobby");
			
			if(strName != null) //결과가 있다면 
			{
				HttpSession httpsession = request.getSession();
				httpsession.setAttribute("name", strName);
				httpsession.setAttribute("phone", strPhone);
				httpsession.setAttribute("gender", strGender);
				httpsession.setAttribute("hobby", strHobby);
				httpsession.setAttribute("id", strID);
				response.sendRedirect("loginResult.jsp");
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











