<%@page import="java.util.Base64"%>
<%@page import="java.nio.charset.StandardCharsets"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.man {color:blue}
.woman{color:hotpink}
</style>
</head>
<body>
<%! String Name, Id, Gender; %>
<%
	Id = (String)session.getAttribute("id");
	Name = (String)session.getAttribute("name");
	Gender = (String)session.getAttribute("gender");
%>

<h1 class=<%=Gender %>><%=Name %></h1>
<h1 class=<%=Gender %>><%=Id %></h1>
<h1 class=<%=Gender %>><%=Gender %></h1>

<a href="modify.jsp">회원정보수정</a>
<% if(Id.equals("admin")) { %>
	<a href="memberSelect.jsp">멤버 목록 열람</a>
<%} %>
</body>
</html>















