<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 상세 정보</title>
</head>
<body>
	<div class="d-grip gap-3">
		<%@ include file="../nav.jsp"%>
		<div class="container">
			<h1 class="text-center p-2">책 상세 정보</h1>
			<h3 class="text-start p-2">번호 : ${ bookid }</h3>
			<h3 class="text-start p-2">제목 : ${ data.bookname }</h3>
			<h3 class="text-start p-2">ISBN : ${ data.bookisbn }</h3>
			<h3 class="text-start p-2">출판사 : ${ data.publisher }</h3>
			<h3 class="text-start p-2">
				가격 :
				<fmt:formatNumber type="number" maxFractionDigits="3"
					value="${data.price}" />
			</h3>
			<h3 class="text-start p-2">책 이미지</h3>
			<img style="height: 500px" src="${data.bookImg}" />


			<div class="row">&nbsp;</div>
			<div class="text-center">
				<form method="POST" action="/delete">
					<input type="hidden" name="bookId" value="${bookid}" /> <input
						type="submit" value="삭제" class="btn btn-outline-primary" /> <a
						class="btn btn-outline-primary" href="/list">목록으로</a> <a
						href="/update?bookId=${bookid}" class="btn btn-outline-primary">수정</a>
				</form>
			</div>
		</div>
	</div>

	<%@ include file="../footer.jsp"%>
</body>
</html>