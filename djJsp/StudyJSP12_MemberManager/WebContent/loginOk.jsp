<%@page import="com.javalec.ex.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    request.setCharacterEncoding("utf-8");
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    
    MemberDao dao = MemberDao.getInstance();
    int checkNum = dao.userCheck(id, pw);
    if(checkNum == dao.MEMBER_LOGIN_IS_NOT) //-1 아이디없음
    {  %>
    <script>
    	alert("아이디가 존재하지 않습니다.")
    	history.go(-1) //바로 뒷페이지로 이동
    </script>
    
    <% } else if(checkNum == dao.MEMBER_LOGIN_PW_NO_GOOD) {%> 
    	<script>
    		alert("비밀번호가 틀립니다.")
    		history.go(-1)
    	</script>
    <%} else if(checkNum == dao.MEMBER_LOGIN_SUCCESS) {
    	MemberDto dto = dao.getMember(id);
    	
    	if(dto==null) { %>
    	<script>
    		alert('존재하지 않는 회원')
    		history.go(-1)
    	</script>
    
    <% } else {
    	//로그인 성공해서 main화면으로 보냄
    		String name = dto.getName();
    		session.setAttribute("id", id);
    		session.setAttribute("name", name);
    		session.setAttribute("ValidMem", "yes");
    		response.sendRedirect("main.jsp");
    	}
    }%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>