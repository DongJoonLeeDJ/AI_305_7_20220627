<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%! int age; %>
<%
	String str = request.getParameter("age");
	try
	{

		age = Integer.parseInt(str);
		if(age>=20)
			response.sendRedirect("pass.jsp?age="+age);
		else
			response.sendRedirect("ng.jsp?age="+age);
	} catch (Exception e) {
		//에러페이지 이동대신 예외발생시 requestex로 돌아감
		//myfail 발생시키고 싶으면 requestex 대신
		//myfail을 입력하거나 아니면 try catch를 다 지운다.
		response.sendRedirect("requestex.html");
	}
%>
</body>
</html>
















