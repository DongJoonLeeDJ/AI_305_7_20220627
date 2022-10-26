<%@ page import= "user.st_UserDAO"%>
<%@ page import= "user.st_UserDTO"%>
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
	st_UserDTO NewUser = new st_UserDTO();
	if(request.getParameter("userID")!=null)
	{
		NewUser.setUserID(request.getParameter("userID"));
	}
	if(request.getParameter("userPassword")!=null)
	{
		NewUser.setUserPassword(request.getParameter("userPassword"));
	}
	if(request.getParameter("name")!=null)
	{
		NewUser.setName(request.getParameter("name"));
	}
	if(request.getParameter("email")!=null)
	{
		NewUser.setEmail(request.getParameter("email"));
	}
	if(request.getParameter("number")!=null)
	{
		NewUser.setNumber(request.getParameter("number"));
	}
	
	//하나라도 빈칸있는경우
	if(NewUser.getUserID().equals("") || NewUser.getUserPassword().equals("")|| NewUser.getName().equals("")|| NewUser.getEmail().equals("")|| NewUser.getNumber().equals(""))
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('다시 확인해주세요.')");
		script.println("</script>");
		script.close();
		return;
	}
	
	//ID와 비밀번호가 모두 있는 경우
	st_UserDAO userDAO = new st_UserDAO();
	int result = userDAO.join(NewUser.getUserID(),NewUser.getUserPassword(),NewUser.getName(),NewUser.getEmail(),NewUser.getNumber());
	if(result == -1){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 존재하는 아이디입니다')");
		script.println("history.back()");
		script.println("</script>");
	}else{//정상구동(result==1)
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('회원가입 성공!!!')");
		script.println("location.href='../St_Join/main.jsp'");
		script.println("</script>");
		script.close();
		return;
	}
	

%>
</body>
</html>