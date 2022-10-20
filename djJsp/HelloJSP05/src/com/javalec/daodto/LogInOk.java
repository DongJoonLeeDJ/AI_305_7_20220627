package com.javalec.daodto;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

/**
 * Servlet implementation class LogInOk
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
		doAction(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		MemberDTO m = new MemberDTO();
		m.setId(request.getParameter("id"));
		m.setPw(request.getParameter("pw"));
		//m의 id를 이용해서 compareM에 값을 추가함
		//m의 pw와 compareM의 pw를 매칭시킴
		MemberDTO compareM = new MemberDAO().checkMember(m);
		PasswordEncoder p = new BCryptPasswordEncoder();
		HttpSession hs = request.getSession();
		if(p.matches(m.getPw(), compareM.getPw())) {
			System.out.println("성공");
			hs.setAttribute("name", compareM.getName());
			hs.setAttribute("gender", compareM.getGender());
			hs.setAttribute("id", compareM.getId());
			response.sendRedirect("loginResult.jsp");
		} else {
			System.out.println("실패");
			hs.setAttribute("id", compareM.getId());//db에 저장된 거
			hs.setAttribute("tryid", m.getId());//login창에서 로그인시도한 id
			response.sendRedirect("loginFail.jsp");
		}
	}

}



