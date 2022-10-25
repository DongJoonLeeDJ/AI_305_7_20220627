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
import com.javalec.ex.command.BListCommand;
import com.javalec.ex.command.BModifyCommand;

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
		String viewPage = null; //� �������� ����
		BCommand command = null; //�������̽� �߰�
								//������ �̿��ؼ� �پ��� Ŭ���� Ȱ��
		String uri = request.getRequestURI();
		//������Ʈ��
		String conPath = request.getContextPath(); 
		//������ �ڿ� ���� �͵�. insert.do ��
		//substring : �ڸ��� ��. �� conPath��ŭ �ڸ�
		String com = uri.substring(conPath.length());
		
		if(com.equals("/list.do")) {
			command = new BListCommand();
			command.execute(request, response);
			viewPage = "list.jsp";
		} else if(com.equals("/content_view.do")) {
			command = new BContentCommand();
			command.execute(request, response);
			viewPage="content_view.jsp";
		} else if (com.equals("/modify.do")) {
			command = new BModifyCommand();
			command.execute(request, response);
			viewPage = "list.do"; //db���� �����ϰ� select �� ȣ��
		}
		
		
		
		
		
		//viewPage�� �̵���
		RequestDispatcher dispatcher =
				request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
	

}











