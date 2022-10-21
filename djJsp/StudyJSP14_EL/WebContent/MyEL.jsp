<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- MemberDto member = new MemberDto(); -->
    <jsp:useBean id="member" class="com.javalec.ex.MemberDto" scope="page"/>
    <jsp:setProperty name="member" property="name" value="홍길동"/>
    <jsp:setProperty name="member" property="id" value="hero430"/>
    <jsp:setProperty name="member" property="pw" value="1234"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=100+100 %> <br>
${100+100 } <br>
<%="ABC" %> <br>
${"ABC" }<br>
<%=true %><br>
${true }<br>
<%=99.99 %> <br>
${99.99 } <br>

이름 : <jsp:getProperty name="member" property="name"/><br>
아이디:<jsp:getProperty name="member" property="id"/><br>
비밀번호:<jsp:getProperty name="member" property="pw"/><br>
<hr>
이름:${member.name}<br>
아이디:${member.id}<br>
비밀번호:${memeber.pw }<br>


<form action="objelOk.jsp" method="get">
아이디:<input type="text" name="id">        <br>
비밀번호:<input type="password" name="pw">  <br>
<input type="submit" value="logintest">
</form>

<%
//내가 지정한 속성에 내가 지정한 값을 넣음 (name부분 속성, value부분 값)
application.setAttribute("apl_name", "apl_value");
session.setAttribute("ss_name", "ss_value");
pageContext.setAttribute("pct_name", "pct_value");
request.setAttribute("rq_name", "rq_value");
%>



</body>
</html>










