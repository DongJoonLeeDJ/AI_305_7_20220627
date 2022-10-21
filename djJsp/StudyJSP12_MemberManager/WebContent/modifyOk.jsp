<%@ page import="com.javalec.ex.MemberDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="dto" class="com.javalec.ex.MemberDto" scope="page"/>
<jsp:setProperty name="dto" property="*"/>
<%
String id = (String)session.getAttribute("id");
System.out.println(id);
dto.setId(id);
MemberDao dao = MemberDao.getInstance();
int ri = dao.updateMember(dto);
System.out.println(ri);
//수정성공
if(ri==1) {
	//db에 반영된 걸 화면에도 반영하기 위하여 session의 name 값을 새로 넘김
	session.setAttribute("name", dto.getName()); 
%>
<script>
	alert('정보수정됨')
	document.location.href="main.jsp" //정보수정 성공 후 메인으로 이동
</script>
<%}else { %>
	<script>
		alert("정보 수정 실패!")
		history.go(-1)
	</script>
<%} %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>