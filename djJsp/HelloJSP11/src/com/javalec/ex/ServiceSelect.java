package com.javalec.ex;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

public class ServiceSelect implements Service {

	@Override
	public ArrayList<MemberDTO> execute(HttpServletRequest request, HttpServletRequest response) {
		// TODO Auto-generated method stub
		MemberDAO m = MemberDAO.getInstance();
		return m.memberSelect();
	}

}
