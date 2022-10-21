<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 1. 끝에 /> 이렇게 마무리하기    
     2. 쌍따옴표 안에 "${}" 이렇게 넣는 데, 쌍따옴표 안에 공백있으면 안 됨 -->
<c:set var="vatName2" value="aaa"/>
<c:out value="${vatName2}"/>

</body>
</html>












