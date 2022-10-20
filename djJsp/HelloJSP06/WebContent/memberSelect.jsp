<%@page import="com.javalec.daodto.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.javalec.daodto.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	MemberDAO memberDAO = new MemberDAO();
	ArrayList<MemberDTO> list = memberDAO.memberSelect();
	for(int i =0; i<list.size(); i++) {
		out.println("이름 : " + list.get(i).getName() + "<br>");
		out.println("아이디 : " + list.get(i).getId() + "<br>");
		out.println("성별 : " + list.get(i).getGender() + "<br>");
		
	}

%>

<table border="1">
	<tr>
		<th>이름</th>
		<th>아이디</th>
		<th>성별</th>
	</tr>
	<%for(int i =0; i<list.size(); i++) { %>
		<tr>
			<td><%=list.get(i).getName() %></td>
			<td><%=list.get(i).getId() %></td>
			<td><%=list.get(i).getGender() %></td>
		</tr>
	<% } %>
</table>


</body>
</html>











