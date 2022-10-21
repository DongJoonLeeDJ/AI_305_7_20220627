<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.javalec.ex.*" %>
<!-- 로그아웃된 상태에서 modify하려고 하면 500에러페이지가 나타나므로, ValidMem에 아무것도 없는지 체크 후, 아무것도 없으면 login.jsp로 이동 -->
<% if(session.getAttribute("ValidMem")==null) { %>
	<jsp:forward page="login.jsp"></jsp:forward>
<%} %>

<% 
//login에서 login성공하여 main으로 넘어옴
//main에서 회원정보 수정 누름
//session 객체에 있는 id값을 받아옴.
String id = (String)session.getAttribute("id"); //로그아웃하고, 이 객체에 접근이 안 됨. session은 null이니까...
MemberDao dao = MemberDao.getInstance(); //db 읽을 수 있는 정보를 받아옴
MemberDto dto = dao.getMember(id); //db 접속해서 id로 조회함
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="mymodify.js"></script>
</head>
<body>
<form action="modifyOk.jsp" method="post" name="reg_frm">
	아이디 : <%=dto.getId() %><br>
	비밀번호 : <input type="password" name="pw"><br>
	비밀번호 확인 : <input type="password" name="pw_check"><br>
	이름 : <input type="text" name = "name" value="<%= dto.getName() %>"><br>
	메일 : <input type="text" name="eMail" value="<%=dto.geteMail()%>"><br>
	주소 : <input type="text" name="address" value="<%= dto.getAddress() %>"><br>
<!-- 	<input type="button" value="수정" onclick="updateInfoConfirm()"><br> -->
	<input type="button" value="수정" id="submitbtn"><br>
	<input type="reset" value="취소" onclick="javascript:window.location='login.jsp'">
</form>
</body>
</html>













