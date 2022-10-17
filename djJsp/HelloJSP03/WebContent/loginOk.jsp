<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!String id,pw; %>
<%id=request.getParameter("id");
pw=request.getParameter("pw");
//id는 aaa pw는 1234라고 가정
if(id.equals("aaa") && pw.equals("1234")) {
	Cookie cookie = new Cookie("id", id);//"id" 키, id는 value
	cookie.setMaxAge(60); //쿠키 보관 시간 1분이라고 지정
	response.addCookie(cookie);
	response.sendRedirect("welcome.jsp");
	
} else {
	//로그인 실패시
	response.sendRedirect("Login.html");
}%>
</body>
</html>


















