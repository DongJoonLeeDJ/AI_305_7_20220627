package com.myjava.mytest;

import java.io.IOException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RequestResponse
 */
@WebServlet("/RequestResponse")
public class RequestResponse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RequestResponse() {
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
		//response.setContentType("text/html;charset=UTF-8");
		
		//request.setCharacterEncoding("UTF-8");
		//response.setCharacterEncoding("UTF-8");
		String str = request.getParameter("birth");
		try {
			int year = Integer.parseInt(str);
			Date now = new Date();  //지금 시간 가져옴
			
			SimpleDateFormat formatter = 
					new SimpleDateFormat("yyyy");
			String NowYear = formatter.format(now);//올해를 스트링으로 바꾼 것 2022 라는 문자열이 나온다.
			int age = Integer.parseInt(NowYear)-year+1;
			
			if(age>=20)
				response.sendRedirect("pass.jsp?age="+age);
			else
				response.sendRedirect("ng.jsp?age="+age);
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(str+"@@@");
			str = URLEncoder.encode(str, "UTF-8");
			response.sendRedirect("fail.jsp?birth="+str);
			
		}
		
	
	}

}









