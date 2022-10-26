<%@page import="java.sql.PreparedStatement"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="model.MemberDTO"%>
<%@ page import="Handlers.MemberDAO"%>
<html>
<head>
<title>Member List</title>


</head>
<body>
	<%
	String id = request.getParameter("id");
	MemberDAO mu = new MemberDAO();
	int check = mu.idCheck(id);

	if (check == 1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('사용 할 수 없는 ID입니다.')");
		script.println("location.href='insertMemberForm.jsp'");
		script.println("</script>");
		script.close();
		return;
	} else if (check == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('사용 가능 한 ID입니다.')");
		script.println("location.href='insertMemberForm.jsp'");
		script.println("</script>");
		script.close();
	}

	else {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('오류입니다.')");
		script.println("location.href='insertMemberForm.jsp'");
		script.println("</script>");
		script.close();
	}
	%>



</body>
</html>

