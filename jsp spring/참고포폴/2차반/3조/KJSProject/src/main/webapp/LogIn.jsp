<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="Handlers.MemberDAO"%>
<%@ page import="java.io.PrintWriter"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
	String id = request.getParameter("id");
	String pw = request.getParameter("password");
	MemberDAO mu = new MemberDAO();

	int check = mu.userCheck(id, pw);

	if (check == 1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		session.setAttribute("id",id);
		script.println("alert('로그인 성공!')");
		script.println("location.href='mainView.jsp'");
		script.println("</script>");
		script.close();
		return;
	} else if (check == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호가 틀렷습니다.')");
		script.println("location.href='LoginView.jsp'");
		script.println("</script>");
		script.close();
	}

	else if (check == -1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('ID가 없습니다.')");
		script.println("location.href='LoginView.jsp'");
		script.println("</script>");
		script.close();
	}

	else if (check == -2) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('오류입니다.')");
		script.println("location.href='LoginView.jsp'");
		script.println("</script>");
		script.close();
	}
	%>

</body>
</html>