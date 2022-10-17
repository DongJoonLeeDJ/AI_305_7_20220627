<%@page import="java.util.Enumeration"%>
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
//Enumeration : ArrayList랑 유사한 것
//객체를 순서대로 넣고, 한 번에 하나씩 순차적으로 처리할 수 있는 것
Enumeration enumeration = session.getAttributeNames();
//enumeration에 있는 모든 걸 다 보여줌
//enumeration에 있는 것 : session에 있는 것
while(enumeration.hasMoreElements()) {
	//sName 키
	String sName = enumeration.nextElement().toString();
	//sValue 실제 값
	String sValue = (String)session.getAttribute(sName);
	if(sValue.equals("bbb"))
		out.println("bbb 안녕");
	
}

%>

<a href="logout_session.jsp">로그아웃</a>
<a href="session_test.jsp">세션테스트페이지</a>

</body>
</html>















