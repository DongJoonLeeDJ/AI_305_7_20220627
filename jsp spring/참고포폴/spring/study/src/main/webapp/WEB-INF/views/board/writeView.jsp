<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	$(document).ready(function() {
		var formObj = $("form[name='writeForm']");
		$(".write_btn").on("click", function() {
			if (fn_valiChk()) {
				return false;
			}
			formObj.attr("action", "/board/write");
			formObj.attr("method", "post");
			formObj.submit();
		});
	})

	function fn_valiChk() {
		var regForm = $("form[name='writeForm'] .chk").length;
		for (var i = 0; i < regForm; i++) {
			if ($(".chk").eq(i).val() == "" || $(".chk").eq(i).val() == null) {
				alert($(".chk").eq(i).attr("title"));
				return true;
			}
		}
	}
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
				<%@include file="../Navbar.jsp"%>
				<c:if test="${member != null}">
					<p style=" color:rgba(0,10,20,1); font-size: 1rem;">${member.userId}님환영합니다.</p>
				</c:if>
		<hr />
		<div>
			<%@include file="nav.jsp"%>
		</div>
		<section style = "height:570px; width:1000px;">
		<div class="container" style="position:relative; left:140px; top: 40px;">
			<form name="writeForm" method="post" action="/board/write">
				<table style="width:800px;">
					<tbody>
						<c:if test="${member.userId != null}">
							<tr class="row g-2">
								<th class="col-md-2"> 제목 </th>
								<th class="col-md-10">
									<input type="text" id="title" name="title" class="form-control" placeholder="제목" aria-label="제목" aria-describedby="basic-addon1">
								</th>
							</tr>
							<tr class="row g-2">
								<th class="col-md-2"> 내용 </th>
								<th class="col-md-10">
									<div class="form-floating">
					  					<textarea id="content" name="content" class="form-control" style="height: 400px"></textarea>
									</div>
								</th>
							</tr>
							<tr class="row g-2">
								<th class="col-md-2"> 작성자 </th>
								<th class="col-md-10">
									<input type="text" id="writer" name="writer" class="form-control" value="${member.userId}" readonly="readonly" aria-describedby="basic-addon1">
								</th>
							</tr>
							<tr style="float:right; margin-top:10px;">
								<td>
									<button class="write_btn btn" type="submit" style="background-color: #008080; color: white;">작성</button>
								</td>
							</tr>
						</c:if>
						<c:if test="${member.userId == null}">
							<p>로그인 후에 작성하실 수 있습니다.</p>
						</c:if>
					</tbody>
				</table>
			</form>
		</div>
		</section>
		<hr  style="clear:both;"  />
	</div>
</body>
</html>