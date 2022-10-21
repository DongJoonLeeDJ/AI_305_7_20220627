package com.javalec.ex;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

public class ServiceInsert implements Service{

	@Override
	public ArrayList<MemberDTO> execute(HttpServletRequest request, HttpServletRequest response) {
		// TODO Auto-generated method stub
		MemberDAO m = MemberDAO.getInstance();
		
		MemberDTO dto = new MemberDTO();
		dto.setName(request.getParameter("name"));
		dto.setGender(request.getParameter("gender"));
		dto.setPw(request.getParameter("pw"));
		dto.setId(request.getParameter("id"));
		
		m.memberInsert(dto);
		return null;
	}

}











