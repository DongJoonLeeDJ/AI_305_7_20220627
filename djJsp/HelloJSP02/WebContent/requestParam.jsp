<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mytest.myjava.Customer" %>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%! 
		String name, pw, major, protocol;
		String[] hobbys;
	%>
	<%
		request.setCharacterEncoding("UTF-8");
		name=request.getParameter("name");
		pw=request.getParameter("pw");
		major=request.getParameter("major");
		protocol=request.getParameter("protocol");
		hobbys=request.getParameterValues("hobby"); //배열형태로 값 줌
	%>
	
	이름 : <%=name %><br>
	비번 : <%=pw %><br>
	전공 : <%=major %><br>
	규약 : <%=protocol %><br>
	취미 : <%=Arrays.toString(hobbys) %>
	
</body>
</html>

















