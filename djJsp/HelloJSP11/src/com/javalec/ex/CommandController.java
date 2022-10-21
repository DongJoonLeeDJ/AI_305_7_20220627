package com.javalec.ex;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CommandController
 */
@WebServlet("*.do")
public class CommandController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommandController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		//프로젝트명
		String conPath = request.getContextPath(); 
		//슬래시 뒤에 오는 것들. insert.do 등
		//substring : 자르는 것. 즉 conPath만큼 자름
		String command = uri.substring(conPath.length());
		
		Service service;
		if(command.equals("/insert.do")) {
			service = new ServiceInsert();
		} else if(command.equals("/update.do")) {
			service = new ServiceUpdate();
		} else if(command.equals("/delete.do")) {
			service = new ServiceDelete();
		} else {
			service = new ServiceSelect();
		}
		ArrayList<MemberDTO> dtos 
		= service.execute(request, response);
		if(dtos!=null) {
			for (MemberDTO memberDTO : dtos) {
				System.out.println(memberDTO.getId());
				System.out.println(memberDTO.getPw());
				System.out.println(memberDTO.getGender());
				System.out.println(memberDTO.getName());
			}
		}
	
	}
}













