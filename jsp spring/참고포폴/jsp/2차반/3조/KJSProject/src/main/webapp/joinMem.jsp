<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="model.MemberDTO" %>
<%@ page import="Handlers.MemberDAO" %>
<%@ page import="java.io.PrintWriter" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("EUC-KR");

	MemberDTO member = new MemberDTO();
	
	if(request.getParameter("nick")!=null)
	{
		member.setNick(request.getParameter("nick"));
	}
	if(request.getParameter("id")!=null)
	{
		member.setId(request.getParameter("id"));
	}
	if(request.getParameter("password")!=null)
	{
		member.setPassword(request.getParameter("password"));
	}
	

	if(member.getNick().equals(""))
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('�г����� �Է����ּ���.')");
		script.println("location.href='insertMemberForm.jsp'");
		script.println("</script>");
		script.close();
		return;
	}
	if(member.getId().equals(""))
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('���̵� �Է����ּ���.')");
		script.println("location.href='insertMemberForm.jsp'");
		script.println("</script>");
		script.close();
		return;
	}
	if(member.getPassword().equals(""))
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('��й�ȣ�� �Է����ּ���.')");
		script.println("location.href='insertMemberForm.jsp'");
		script.println("</script>");
		script.close();
		return;
	}
	
	
	//ID�� ��й�ȣ�� ��� �ִ� ���
	MemberDAO memUtil = new MemberDAO();
	int result = memUtil.join(member.getNick(),member.getId(),member.getPassword());
	if(result == 1) //���������� ������ ���
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('���ԵǾ����ϴ�.')");
		script.println("location.href='mainView.jsp'");
		script.println("</script>");
		script.close();
	}
%>
</body>
</html>