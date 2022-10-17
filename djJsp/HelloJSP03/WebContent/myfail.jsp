<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
h1{color:red; background:black}</style>
</head>
<body>
<% 
String str = request.getParameter("age");
out.println("<h1>" + str + "값은 잘못되었습니다.</h1>");
%>
</body>
</html>