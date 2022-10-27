<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link rel="stylesheet" href="../resources/css/boardfont.css">
<title>게시판</title>
</head>
<script type="text/javascript">
	$(document).ready(
			function() {
				var formObj = $("form[name='updateForm']");

				$(".cancel_btn").on(
						"click",
						function() {
							event.preventDefault();
							location.href = "/board/readView?bno=${update.bno}"
									+ "&page=${scri.page}"
									+ "&perPageNum=${scri.perPageNum}"
									+ "&searchType=${scri.searchType}"
									+ "&keyword=${scri.keyword}";
						})

				$(".update_btn").on("click", function() {
					if (fn_valiChk()) {
						return false;
					}
					formObj.attr("action", "/board/update");
					formObj.attr("method", "post");
					formObj.submit();
				})
			})
	function fn_valiChk() {
		var updateForm = $("form[name='updateForm'] .chk").length;
		for (var i = 0; i < updateForm; i++) {
			if ($(".chk").eq(i).val() == "" || $(".chk").eq(i).val() == null) {
				alert($(".chk").eq(i).attr("title"));
				return true;
			}
		}
	}
</script>
<script type="text/javascript">
	$(document).ready(function() {

		$(".cancel_btn").on("click", function() {
			event.preventDefault();
			location.href = "/board/list";
		})
	})
</script>
<style>
.content {
	margin-top:55px;
	position:relative;
	place-items: center;
	display: grid;
	grid-template-rows: 70px 52px;
}
</style>
<body style="background-image: url('../resources/img/배경화면1.png')">
	<div class="content">
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
			<form name="updateForm" role="form" method="post" action="/board/update">
				<input type="hidden" name="bno" value="${update.bno}" readonly="readonly" />
				<table style="width:500px;">
					<tbody>
						<tr class="row g-2">
							<th class="col-md-2"for="title">제목</th>
							<th class="col-md-10">
								<input type="text" id="title" name="title" value="${update.title}" class="chk form-control" title="제목을 입력하세요" />
							</th>
						</tr>
						<tr class="row g-2">
							<th class="col-md-2" for="content"> 내용 </th>
							<th class="col-md-10">
								<div class="form-floating">
									<textarea id="content" name="content" class="chk form-control" title="내용을 입력하세요" style="height: 400px"><c:out value="${update.content}" /></textarea>
								</div>
							</th>
						</tr>
						<tr class="row g-2">
							<th class="col-md-2" for="writer"> 작성자 </th>
							<th class="col-md-10">
								<input type="text" id="writer" name="writer" value="${update.writer}" class="form-control" readonly="readonly" />
							</th>
						</tr>
						<tr class="row g-2">
							<th class="col-md-2" for="regdate"> 작성날짜 </th>
							<th class="col-md-10">
								<fmt:formatDate value="${update.regdate}" pattern="yyyy-MM-dd" />
							</th>
						</tr>
					</tbody>
				</table>
				<div style="margin-left:380px;">
					<button type="submit" class="update_btn btn" style="background-color: #008080; color: white;">저장</button>
					<button type="submit" class="cancel_btn btn btn-warning">취소</button>
				</div>
			</form>
		</div>
		</section>
		<hr />
	</div>
</body>
</html>