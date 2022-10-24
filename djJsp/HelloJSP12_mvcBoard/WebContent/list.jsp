<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
<table class="table table-striped" width="100%" border=1>
	<tr>
		<td>번호</td>
		<td>이름</td>
		<td>제목</td>
		<td>날짜</td>
		<td>조회수</td>
	</tr>
	<%-- list : getAttribute에서 가져옴 --%>
	<%-- dto : list 안에 있는 구성요소 각각을 의미 --%>
	<c:forEach items="${list}" var="dto">
		<tr>
			<td>${dto.bId}</td>
			<td>${dto.bName}</td>
			<td>
				<c:forEach begin="1" end="${dto.bIndent}">-</c:forEach>
				<a href="content_view.do?bId=${dto.bId}">${dto.bTitle }</a>
			</td>
			<td>${dto.bDate}</td>
			<td>${dto.bHit}</td>
		</tr>
	</c:forEach>
	<tr>
		<td colspan=5><a href="write_view.do">글작성</a> </td>
	</tr>
</table>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>












