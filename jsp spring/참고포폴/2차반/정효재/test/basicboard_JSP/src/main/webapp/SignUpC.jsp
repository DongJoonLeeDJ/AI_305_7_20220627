<%@page import="user.UserDTO"%>
<%@page import="user.UserDAO"%>
<%@page import="java.io.PrintWriter" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>
<%@page import="java.util.Calendar" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("EUC-KR");
	UserDTO newUser = new UserDTO();
	if(request.getParameter("userID")!=""){
		newUser.setUserID(request.getParameter("userID"));
	}
	if(request.getParameter("userPassword")!=""){
		newUser.setUserPassword(request.getParameter("userPassword"));
	}
	if(request.getParameter("userName")!=""){
		newUser.setName(request.getParameter("userName"));
	}
	if(request.getParameter("tel")!=""){
		newUser.setTel(request.getParameter("tel"));
	}
	if(request.getParameter("email")!=""){
		newUser.setEmail(request.getParameter("email"));
	}
	if(request.getParameter("birth")!=""){
		newUser.setBirth(request.getParameter("birth"));
	}
	Calendar cal = Calendar.getInstance();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String reg_date = sdf.format(cal.getTime());
	newUser.setReg_date(reg_date);
	
/* 	out.println("유저ID : "+newUser.getUserID());
	out.println("비밀번호 : "+newUser.getUserPassword());
	out.println("유저이름 : "+newUser.getName());
	out.println("전화번호 : "+newUser.getTel());
	out.println("생년월일 : "+newUser.getBirth());
	out.println("가입날짜 : "+newUser.getReg_date()); */
	
	/* if(newUser.getUserID().equals("")
			|| newUser.getUserPassword().equals(""))
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 게 있다')");
		script.println("</script>");
		script.close();
		return;
	} */
	
	//ID와 비밀번호가 모두 있는 경우
	UserDAO userDAO = new UserDAO();
	int result = userDAO.join(newUser.getUserID(),newUser.getUserPassword(),newUser.getName(),
			newUser.getTel(),newUser.getEmail(),newUser.getBirth(),newUser.getReg_date());
	if(result == 1) //정상적으로 구동된 경우
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('정상적으로 가입되셨습니다..')");
		script.println("location.href='index.jsp'");
		script.println("</script>");
		script.close();
	}
%>
</body>
</html>