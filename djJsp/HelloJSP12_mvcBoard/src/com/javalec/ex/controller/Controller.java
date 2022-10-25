package com.javalec.ex.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.command.BCommand;
import com.javalec.ex.command.BContentCommand;
import com.javalec.ex.command.BDeleteCommand;
import com.javalec.ex.command.BListCommand;
import com.javalec.ex.command.BModifyCommand;
import com.javalec.ex.command.BReplyCommand;
import com.javalec.ex.command.BReplyViewCommand;
import com.javalec.ex.command.BWriteCommand;

/**
 * Servlet implementation class Controller
 */
@WebServlet("*.do")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());

		actionDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(request, response);
	}
	
	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("utf-8");
		String viewPage = null; //어떤 페이지로 갈지
		BCommand command = null; //인터페이스 추가
								//다형성 이용해서 다양한 클래스 활용
		String uri = request.getRequestURI();
		//프로젝트명
		String conPath = request.getContextPath(); 
		//슬래시 뒤에 오는 것들. insert.do 등
		//substring : 자르는 것. 즉 conPath만큼 자름
		String com = uri.substring(conPath.length());
		
		if(com.equals("/list.do")) {
			command = new BListCommand();
			command.execute(request, response);
			viewPage = "/list.jsp";
		} else if(com.equals("/content_view.do")) {
			command = new BContentCommand();
			command.execute(request, response);
			viewPage="/content_view.jsp";
		} else if (com.equals("/modify.do")) {
			command = new BModifyCommand();
			command.execute(request, response);
			viewPage = "/list.do"; //db에서 수정하고 select 재 호출
		} else if (com.equals("/write_view.do")) {
			viewPage="/write_view.jsp";
		} else if(com.equals("/write.do")) {
			command = new BWriteCommand();
			command.execute(request, response);
			viewPage="/list.do";
		} else if(com.equals("/delete.do")) {
			command = new BDeleteCommand();
			command.execute(request, response);
			viewPage="/list.do";
		} else if(com.equals("/reply_view.do")) {
			command = new BReplyViewCommand();
			command.execute(request, response);
			viewPage="/reply_view.jsp";
		} else if(com.equals("/reply.do")) {
			command = new BReplyCommand();
			command.execute(request, response);
			viewPage="/list.do";
		}
		
		
		
		//sendRedirect 하면 url이 바뀜
		if(viewPage.equals("/list.do")) {
			response.sendRedirect(conPath+viewPage);
		} else {
			//viewPage로 이동함
			RequestDispatcher dispatcher =
					request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}
	}
	

}












