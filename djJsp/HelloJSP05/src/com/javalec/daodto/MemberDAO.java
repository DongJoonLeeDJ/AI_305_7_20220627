package com.javalec.daodto;

public class MemberDAO {
	
	private String url = "jdbc:mysql://localhost:3306/jspdb?" + "useUnicode=true&characterEncoding=utf8&"
			+ "serverTimezone=UTC";
	private String uid = "root";
	private String upw = "1234";
	
	public MemberDAO() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); //jar�� �ִ� db ���� �ҽ��� �����ϴ� ��
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}

}
