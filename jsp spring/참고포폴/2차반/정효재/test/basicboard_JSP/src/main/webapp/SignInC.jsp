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
	<% request.setCharacterEncoding("utf-8"); %>
	<% 
	String id = request.getParameter("userID");
	String password = request.getParameter("userPassword");
	String rank= null;
	String getRank = null;
	UserDAO userDAO = new UserDAO();
	int check = userDAO.userCheck(id, password);
	
	if(check==1){
		%>
		<script>
		alert("�α��ο� �����ϼ̽��ϴ�.");
		</script>
		<%
		session.setAttribute("id", id);
		getRank = userDAO.getRank(id);
		session.setAttribute("rank", getRank);
		rank = (String)session.getAttribute("rank");
		if(rank == null || rank.equals("")){
			session.setAttribute("rank","��ȸ��");
			%>
			<script>
			alert("���ϵ帳�ϴ�.\n��ȸ���� �Ǽ̽��ϴ�..");
			</script>
	<%
		}
		rank = (String)session.getAttribute("rank");
		userDAO.setRank(id, rank);
		
		response.sendRedirect("listForm.jsp");
	}else if(check==0){%>
	<script> 
	  alert("��й�ȣ�� ���� �ʽ��ϴ�.");
      history.go(-1);
	</script>
	<%}else{ %>
	<script>
	  alert("���̵� ���� �ʽ��ϴ�..");
	  history.go(-1);
	</script>
	<%}%>
</body>
</html>