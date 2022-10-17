<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!int age; %>
	<%String str = request.getParameter("age");
	age = Integer.parseInt(str);%>
	<%=age %>살입니다. 술담배 구매 불가능
	<img src="https://img.insight.co.kr/static/2020/10/17/700/img_20201017110930_7ae9x454.webp" alt="" />
</body>
</html>