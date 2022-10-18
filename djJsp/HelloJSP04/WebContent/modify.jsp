<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- db에서 값을 읽어올 것. id를 통해서 조회할 것. -->
	<!-- modifyOk에서 update를 할 것 -->
	<!-- modifyResult.jsp에서 결과 확인할 것 -->
	<%! String strName, strID, strPW, strPhone, strGender; %>
	<%
		try {
		Class.forName("com.mysql.cj.jdbc.Driver"); //jar에 있는 db 연결 소스를 참조하는 것
	} catch (ClassNotFoundException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	}
	Connection conn = null; //DB 연결에 관련된 객체들
	Statement stmt = null;
	ResultSet rs = null;
	try {
		//db연결에 필요한 정보들
		//db위치, 스키마이름, 인코딩 등
		String jdbcDriver = "jdbc:mysql://localhost:3306/jspdb?" + "useUnicode=true&characterEncoding=utf8&"
		+ "serverTimezone=UTC";
		String dbUser = "root";
		String dbPass = "1234";

		//연결을 만듦
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		stmt = conn.createStatement(); // 쿼리문 실행 관련 객체 생성
		
		//session에서 ID 받아올 것
		strID = (String)session.getAttribute("id");
		//session에서 받은 ID 이용해서 조회할 것
		String strQuery = 
		"select * from member where id= '"+strID+"'";
		rs = stmt.executeQuery(strQuery);
		
		rs.next(); //한 줄 읽어오기(어차피 id 기준이면 1개만 조회됨)
		
		strName = rs.getString("name");
		strID = rs.getString("id");
		strPW = rs.getString("pw");
		strPhone = rs.getString("hp");
		strGender = rs.getString("gender");
		
		System.out.println(strName);
		System.out.println(strID);
		System.out.println(strPW);
		System.out.println(strPhone);
		System.out.println(strGender);

	} catch (Exception e) {
		e.printStackTrace();
	} finally { //db 호출하고 쿼리문 날렸으면 무조건 닫아줘야 함
		try { //그래서 다른 사용자들도 쓰고 다시 쓸 수 있다.
			stmt.close();
			conn.close();
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}
	%>
</body>
</html>