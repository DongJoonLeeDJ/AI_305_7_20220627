package com.myjsp.mytest;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myjsp.myjava.Student;

/**
 * Servlet implementation class StudentWorld
 */
@WebServlet("/StudentWorld")
public class StudentWorld extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentWorld() {
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
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");//post방식일 때 한글깨짐 방지
		
		//jsp파일에서 name값이 name, age, number인 태그의 값을 받아올 것
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String number = request.getParameter("number");
		
		try {
			Student s = new Student(name, 
					Integer.parseInt(age), 
					Integer.parseInt(number));
			response.getWriter().append("<h1>"+s.toString()+"</h1>");
		} catch (Exception e) {
			System.out.println("잘못된 값!");
			//response.getWriter().append("학생 값 잘못됨");
			//지정한 jsp 페이지로 이동하는 것!
			response.sendRedirect("StudentJSP.jsp");
		}
		
		
	
	}

}




