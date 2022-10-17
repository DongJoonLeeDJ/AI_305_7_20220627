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
	<td>Name</td>
	<td>Sabeon</td>
	<td>buseo</td>
</tr>
<%Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
try {
	String jdbcDriver =
			"jdbc:mysql://localhost:3306/hello_java_web?"+
			"useUnicode=true&characterEncoding=utf8&"+
			"serverTimezone=UTC";
	String dbUser = "root";
	String dbPass = "1234";
	String query = "select * from employee";
	conn = 
	DriverManager.getConnection(jdbcDriver,dbUser,dbPass);
	stmt = conn.createStatement(); //쿼리문 실행 관련 객체 생성
	rs=stmt.executeQuery(query); //쿼리문 실행
	while(rs.next()) //한줄씩 읽는다.
	{
%>
	<tr>  <!-- employee 테이블 길이만큼 tr이 생성됨 -->
		<td><%=rs.getString("name") %></td>
		<td><%=rs.getString("sabeon") %></td>
		<td><%=rs.getString("buseo") %></td>
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











