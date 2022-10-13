<%@ page import= "user.st_mailDAO"%>
<%@ page import= "user.st_mailDTO"%>
<%@ page import= "java.io.PrintWriter" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	st_mailDTO mail = new st_mailDTO();
	if(request.getParameter("name")!=null)
	{
		mail.setName(request.getParameter("name"));
	}
	if(request.getParameter("email")!=null)
	{
		mail.setEmail(request.getParameter("email"));
	}
	if(request.getParameter("phone")!=null)
	{
		mail.setPhone(request.getParameter("phone"));
	}
	if(request.getParameter("message")!=null)
	{
		mail.setMessage(request.getParameter("message"));
	}
	
	
	
	st_mailDAO userDAO = new st_mailDAO();
	
	int result = userDAO.sendmail(mail.getName(),mail.getEmail(),mail.getPhone(),mail.getMessage());
	if(result == -1){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('메세지 보내기 성공!!!')");
		script.println("location.href='../St_Join/main.jsp'");
		script.println("</script>");
		script.close();
		return;
	}
 
%>
</body>
</html>