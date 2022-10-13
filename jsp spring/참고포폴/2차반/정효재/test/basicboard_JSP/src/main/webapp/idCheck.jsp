<%@page import="user.UserDAO"%>
<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<body>
<%
String userID = request.getParameter("userID");
UserDAO userDAO = new UserDAO();
int check = userDAO.idCheck(userID); //1이면 중복,0 이면 중복X, -1이면 에러.
if(check==1)
{
%>
	<script> 
	alert("이미 사용중인 아이디입니다.");
	history.go(-1);
	</script>
<% 
}
else if(check==0)
{
%>
	<script> 
	alert("사용 가능한 아이디입니다.");
	history.go(-1);
	</script>
<% }
else
{
%>
	<script> 
	alert("중복체크에 실패했습니다.");
	history.go(-1);
	</script>
<%
} %>
</body>
</html>