package com.javalec.daodto;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

/**
 * Servlet implementation class JoinOk
 */
@WebServlet("/JoinOk")
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
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
		MemberDAO memberDAO = new MemberDAO();
		request.setCharacterEncoding("utf-8");
		MemberDTO m = new MemberDTO();
		m.setName(request.getParameter("name"));
		m.setId(request.getParameter("id")); 
		
		//m.setPw(request.getParameter("pw"));
		String password = request.getParameter("pw");
		PasswordEncoder p = new BCryptPasswordEncoder();
		String cPassWord = p.encode(password);
		System.out.println(p.matches(password, cPassWord));
		m.setPw(cPassWord);
		
		//PasswordEncoder 인터페이스라서 익명클래스화 가능
//		PasswordEncoder c = new PasswordEncoder() {
//			
//			@Override
//			public boolean matches(CharSequence rawPassword, String encodedPassword) {
//				// TODO Auto-generated method stub
//				return false;
//			}
//			
//			@Override
//			public String encode(CharSequence rawPassword) {
//				// TODO Auto-generated method stub
//				return null;
//			}
//		};
		
		m.setGender(request.getParameter("gender"));
		memberDAO.memberInsert(m);
		response.sendRedirect("memberInsert.jsp");
	}

}













