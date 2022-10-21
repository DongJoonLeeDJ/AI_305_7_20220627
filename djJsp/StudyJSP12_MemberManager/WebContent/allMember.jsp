<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javalec.ex.*" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% MemberDao memberDao = MemberDao.getInstance(); 
ArrayList<MemberDto> list = memberDao.allMembers(); //MemberDao에 추가해야 함!
%>
<table border="1">
	<tr>
		<th>이름</th>
		<th>아이디</th>
		<th>비밀번호</th>
		<th>주소</th>
		<th>메일</th>
	</tr>
	<% for(int i = 0; i<list.size(); i++) { %>
	<tr>
		<td><%=list.get(i).getName() %></td>
		<td><%=list.get(i).getId() %></td>
		<td><%=list.get(i).getPw() %></td>
		<td><%=list.get(i).getAddress() %></td>
		<td><%=list.get(i).geteMail() %></td>
	</tr>
	<%} %>

</table>
</body>
</html>