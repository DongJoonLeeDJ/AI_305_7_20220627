package com.myjsp.mytest;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JoinOk
 */
@WebServlet({ "/JoinOk", "/joinok", "/JOINOK", "/JoinOK" })
public class JoinOk extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JoinOk() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doAction(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doAction(request, response);
	}

	protected void doAction(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		// ȸ������ ȭ�鿡���� �����͵� �ҷ���
		String strName = request.getParameter("name");
		String strId = request.getParameter("id");
		String strPw = request.getParameter("pw");
		String strPhone = request.getParameter("phone") + "-" + request.getParameter("phone2") + "-"
				+ request.getParameter("phone3");
		String strGender = request.getParameter("gender");

		String[] hobbys = request.getParameterValues("hobby");
		String strHobby = Arrays.toString(hobbys);

		System.out.println("Insert�� ���Ե� ����");
		System.out.println(strName);
		System.out.println(strId);
		System.out.println(strPw);
		System.out.println(strPhone);
		System.out.println(strGender);
		System.out.println(strHobby);

		String strQuery = String.format("insert into member values (" + "'%s', '%s','%s', '%s','%s', '%s')", strName,
				strId, strPw, strPhone, strGender, strHobby);

		System.out.println(strQuery);
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			String jdbcDriver = "jdbc:mysql://localhost:3306/jspdb?" + "useUnicode=true&characterEncoding=utf8&"
					+ "serverTimezone=UTC";
			String dbUser = "root";
			String dbPass = "1234";

			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			stmt = conn.createStatement(); // ������ ���� ���� ��ü ����
			int i = stmt.executeUpdate(strQuery);
			if (i == 1) { // ����
				System.out.println("����");
			} else {
				System.out.println("����");
				response.sendRedirect("join.html");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				stmt.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

	}
}
