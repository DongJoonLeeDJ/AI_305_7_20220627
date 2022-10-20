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
 * Servlet implementation class ModifyOk
 */
@WebServlet("/ModifyOk")
public class ModifyOk extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifyOk() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
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
		HttpSession httpSession;
		httpSession = request.getSession();
		System.out.println(httpSession.getAttribute("id"));
		
		//�̸� pw phone gender�� ��������(id�� �̹� session���� ����)
		String strName = request.getParameter("name");
		String strPhone = 
				request.getParameter("phone")+ "-" +
				request.getParameter("phone2")+ "-" + 
				request.getParameter("phone3");
		String strPW = request.getParameter("pw");
		String strGender = request.getParameter("gender");
		
		String strQuery = String.format(
				"update member set name='%s',"
				+ "hp='%s',gender='%s',pw='%s' where id='%s'", 
				strName,strPhone,strGender,strPW,
				httpSession.getAttribute("id"));
		System.out.println(strQuery+"����");
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
			int i = stmt.executeUpdate(strQuery); //db�� ��������
			if (i == 1) { // ����(update ������ ����޴� �÷��� 1���ϱ�)
				System.out.println("����");
				//response.sendRedirect("joinResult.jsp");
				httpSession.setAttribute("name", strName);
				response.sendRedirect("modifyResult.jsp");
			} else {
				System.out.println("����");
				response.sendRedirect("modify.jsp");
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














