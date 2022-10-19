<%@page import="java.util.Base64"%>
<%@page import="java.nio.charset.StandardCharsets"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! String Name, Phone, Gender, Hobby; %>
<%
	Name = (String)session.getAttribute("name");
	Phone = (String)session.getAttribute("phone");
	Gender = (String)session.getAttribute("gender");
	Hobby = (String)session.getAttribute("hobby");

%>
<%=Name%>
<%=Phone %>
<h1><%=Gender %></h1>
<h2><%=Hobby %></h2>

<a href="modify.jsp">회원정보수정</a>
<a href="MWOk">회원탈퇴</a>
</body>
</html>















