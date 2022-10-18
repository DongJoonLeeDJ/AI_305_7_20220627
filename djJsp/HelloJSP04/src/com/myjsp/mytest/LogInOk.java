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
			Class.forName("com.mysql.cj.jdbc.Driver"); //jar�� �ִ� db ���� �ҽ��� �����ϴ� ��
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		Connection conn = null; //DB ���ῡ ���õ� ��ü��
		Statement stmt = null;
		ResultSet rs = null;
		try {
			//db���ῡ �ʿ��� ������
			//db��ġ, ��Ű���̸�, ���ڵ� ��
			String jdbcDriver = "jdbc:mysql://localhost:3306/jspdb?" + "useUnicode=true&characterEncoding=utf8&"
					+ "serverTimezone=UTC";
			String dbUser = "root";
			String dbPass = "1234";
			
			//������ ����
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			stmt = conn.createStatement(); // ������ ���� ���� ��ü ����
			
			rs = stmt.executeQuery(strQuery);
			
			rs.next(); //�� �� �о����
			
			//���̺��� ���� �о��
			String strName = rs.getString("name");//getNString �ƴ�
			String strPhone = rs.getString("hp");
			String strGender = rs.getString("gender");
			String strHobby = rs.getString("hobby");
			
			if(strName != null) //����� �ִٸ� 
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
		} finally { //db ȣ���ϰ� ������ �������� ������ �ݾ���� ��
			try {   //�׷��� �ٸ� ����ڵ鵵 ���� �ٽ� �� �� �ִ�.
				stmt.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	
	}
}











