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
		script.println("alert('닉네임을 입력해주세요.')");
		script.println("location.href='insertMemberForm.jsp'");
		script.println("</script>");
		script.close();
		return;
	}
	if(member.getId().equals(""))
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('아이디를 입력해주세요.')");
		script.println("location.href='insertMemberForm.jsp'");
		script.println("</script>");
		script.close();
		return;
	}
	if(member.getPassword().equals(""))
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호를 입력해주세요.')");
		script.println("location.href='insertMemberForm.jsp'");
		script.println("</script>");
		script.close();
		return;
	}
	
	
	//ID와 비밀번호가 모두 있는 경우
	MemberDAO memUtil = new MemberDAO();
	int result = memUtil.join(member.getNick(),member.getId(),member.getPassword());
	if(result == 1) //정상적으로 구동된 경우
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('가입되었습니다.')");
		script.println("location.href='mainView.jsp'");
		script.println("</script>");
		script.close();
	}
%>
</body>
</html>