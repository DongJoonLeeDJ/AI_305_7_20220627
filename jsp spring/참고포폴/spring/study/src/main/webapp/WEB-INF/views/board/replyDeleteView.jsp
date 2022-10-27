<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link rel="stylesheet" href="../resources/css/boardfont.css">
<title>게시판</title>
</head>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						var formObj = $("form[name='updateForm']");

						$(".cancel_btn")
								.on(
										"click",
										function() {
											location.href = "/board/readView?bno=${replyDelete.bno}"
													+ "&page=${scri.page}"
													+ "&perPageNum=${scri.perPageNum}"
													+ "&searchType=${scri.searchType}"
													+ "&keyword=${scri.keyword}";
										})

					})
</script>
<body style="background-image: url('../resources/img/배경화면1.png')">

	<div id="root">
		<header>
			<h1>게시판</h1>
		</header>
		<hr />

		<div>
			<%@include file="nav.jsp"%>
		</div>
		<hr />

		<section style = "height:570px; width:1000px;">
		<div class="container" style="position:relative; left:140px; top: 40px;">
			<form name="updateForm" role="form" method="post"
				action="/board/replyDelete">
				<input type="hidden" name="bno" value="${replyDelete.bno}" readonly="readonly" />
				<input type="hidden" id="rno" name="rno" value="${replyDelete.rno}" /> 
				<input type="hidden" id="page" name="page" value="${scri.page}"> 
				<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}">
				<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}"> 
				<input type="hidden"	id="keyword" name="keyword" value="${scri.keyword}">
				<div>
					<p>삭제 하시겠습니까?</p>
					<button type="submit" class="delete_btn btn btn-danger">예 삭제합니다.</button>
					<button type="button" class="cancel_btn btn btn-warning">아니오. 삭제하지 않습니다.</button>
				</div>
			</form>
		</div>
		</section>
		<hr />
	</div>
</body>
</html>