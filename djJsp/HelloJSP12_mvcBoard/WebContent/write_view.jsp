<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border=1 width=500 cellpadding=0 cellspacing=0>
	<form action="write.do" method="post">
		<tr>
			<td>이름</td>
			<td><input type="text" name="bName"></td>
		</tr>
		<tr>
			<td>제목</td>
			<td><input type="text" name="bTitle"></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea rows=10 name="bContent"></textarea></td>
		</tr>
		<tr>
			<td colspan=2>
				<input type="submit" value="글쓰기"> &nbsp;
				<a href="list.do">목록보기</a>
			</td>
		</tr>
	</form>
</table>
</body>
</html>

















