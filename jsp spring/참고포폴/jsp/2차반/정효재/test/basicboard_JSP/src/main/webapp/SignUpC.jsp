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
	
/* 	out.println("����ID : "+newUser.getUserID());
	out.println("��й�ȣ : "+newUser.getUserPassword());
	out.println("�����̸� : "+newUser.getName());
	out.println("��ȭ��ȣ : "+newUser.getTel());
	out.println("������� : "+newUser.getBirth());
	out.println("���Գ�¥ : "+newUser.getReg_date()); */
	
	/* if(newUser.getUserID().equals("")
			|| newUser.getUserPassword().equals(""))
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('�Է��� �� �� �� �ִ�')");
		script.println("</script>");
		script.close();
		return;
	} */
	
	//ID�� ��й�ȣ�� ��� �ִ� ���
	UserDAO userDAO = new UserDAO();
	int result = userDAO.join(newUser.getUserID(),newUser.getUserPassword(),newUser.getName(),
			newUser.getTel(),newUser.getEmail(),newUser.getBirth(),newUser.getReg_date());
	if(result == 1) //���������� ������ ���
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('���������� ���ԵǼ̽��ϴ�..')");
		script.println("location.href='index.jsp'");
		script.println("</script>");
		script.close();
	}
%>
</body>
</html>