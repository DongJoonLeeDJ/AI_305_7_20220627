<%@page import="com.javalec.ex.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import="java.sql.*"%>
<%@ page import="com.javalec.*"%>

<!-- MemberDto dto = new MemberDto(); -->
<jsp:useBean id="dto" class="com.javalec.ex.MemberDto" />
<!-- dto.setId 부터 시작해서 모든 멤버들을 set한 것! -->
<!-- property="*"를 쓰기 위해선!!! dto의 멤버이름(id,pw등...)이랑 join.html의 form 태그 안의 input들의 -->
<!-- name값이 정확하게 일치해야 함!!! -->
<jsp:setProperty name="dto" property="*" />
<%
dto.setrDate(new Timestamp(System.currentTimeMillis())); //현재시간을 밀리sec로 표시. 
MemberDao dao = MemberDao.getInstance();

if(dao.confirmId(dto.getId()) == dao.MEMBER_EXISTENT ) //아이디가 이미 존재하고 있는 경우
{
%>

<script>
	alert("아이디가 이미 중복됨")
	history.back() //직전 화면으로 넘어감
</script>
<%} else {
	//dto(bean) 이용해서 회원추가
	int ri = dao.insertMember(dto);
	if(ri == dao.MEMBER_JOIN_SUCCESS) {
		session.setAttribute("id", dto.getId()); //로그인 창에 보낼 것
		%>
<script>
			alert("회원가입성공")
			location.href="login.jsp"
		</script>
<%
	} else {
		%>
			<script>
				alert("회원가입 실패!")
				location.href="login.jsp"
			</script>
<% 
			}
		} 
		%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>