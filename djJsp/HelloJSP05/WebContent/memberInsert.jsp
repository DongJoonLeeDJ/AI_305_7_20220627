<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="JoinOk" method="post">
	이름 : <input type="text" name="name" id="name" />
	<br />
	ID : <input type="text" name="id" id="id" />
	<br />
	PW : <input type="password" name="pw" id="pw" />
	<br />
	성별
<!-- 	input[type=radio name=gender] -->
	남자
	<input type="radio" name="gender" value="man" id="man"/>
	여자
	<input type="radio" name="gender" value="woman" id="woman"/>
	
	<input type="submit" value="회원가입" />
	<input type="reset" value="취소" />
</form>
</body>
</html>











