package com.javalec.ex;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

public interface Service {

	public ArrayList<MemberDTO> execute
	(HttpServletRequest request, HttpServletRequest response);
	
}
