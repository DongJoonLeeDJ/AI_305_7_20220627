<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
   String id ="";
   try{
	   id = (String)session.getAttribute("id");
	   if(id==null || id.equals(""))
           response.sendRedirect("index.jsp");
	   else{
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link href="" rel="stylesheet" type="text/css">
<title>Basic_Board</title>
</head>
<body>
  <b><%=id %></b>님이 로그인 하셨습니다. 
<form method="post" action="SignOutC.jsp">
		<input type="submit" value="로그아웃">
</form>

</body>
</html>
<% 
	   }
    }catch(Exception e){
		e.printStackTrace();
	}
%>