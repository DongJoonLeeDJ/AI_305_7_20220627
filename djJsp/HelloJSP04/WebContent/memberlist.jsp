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
<h1>DB 연결된 테이블</h1>
<table border=1>
<tr>
<!-- th : head, td : 본문 -->
	<th>이름</th>
	<th>ID</th>
	<th>폰번호</th>
	<th>성별</th>
</tr>
<%Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
try {
	String jdbcDriver =
			"jdbc:mysql://localhost:3306/jspdb?"+
			"useUnicode=true&characterEncoding=utf8&"+
			"serverTimezone=UTC";
	String dbUser = "root";
	String dbPass = "1234";
	String query = "select * from member";
	conn = 
	DriverManager.getConnection(jdbcDriver,dbUser,dbPass);
	stmt = conn.createStatement(); //쿼리문 실행 관련 객체 생성
	rs=stmt.executeQuery(query); //쿼리문 실행
	while(rs.next()) //한줄씩 읽는다.
	{
%>
	<tr>  
		<td><%=rs.getString("name") %></td>
		<td><%=rs.getString("id") %></td>
		<td><%=rs.getString("hp") %></td>
		<td><%=rs.getString("gender") %></td>
	</tr>
<%}
	}catch(Exception e)
	{
		e.printStackTrace();
	} finally {
		rs.close();
		stmt.close();
		conn.close();
	}
	%>

</table>
</body>
</html>











