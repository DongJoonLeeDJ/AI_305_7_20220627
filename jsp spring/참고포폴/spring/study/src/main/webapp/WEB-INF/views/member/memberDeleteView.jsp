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
<title>회원탈퇴</title>
</head>
<style>
.box01 {
	width: 400px;
	height:350px;
	position: relative;
	padding: 25 35;
	margin: 25 25;
	z-index: 1;
}

.box01::before {
	height:350px;
	content: "";
	background-color: gray;
	background-size: cover;
	opacity: 0.6;
	position: absolute;
	top: 0px;
	left: 0px;
	right: 0px;
	bottom: 0px;
	z-index: -1;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		// 취소
		$(".cancle").on("click", function() {
			location.href = "/";
		})

		$("#submit").on("click", function() {
			if ($("#userPass").val() == "") {
				alert("비밀번호를 입력해주세요.");
				$("#userPass").focus();
				return false;
			}

			$.ajax({
				url : "/member/passChk",
				type : "POST",
				dataType : "json",
				data : $("#delForm").serializeArray(),
				success : function(data) {

					if (data == 0) {
						alert("패스워드가 틀렸습니다.");
						return;
					} else {
						if (confirm("회원탈퇴하시겠습니까?")) {
							$("#delForm").submit();
						}
					}
				}
			})
		});
	})
</script>
<body style="background-image: url('../resources/img/한지모양2.jpg')">
	<section id="container">
		<div class="row">
			<div class="col"></div>
			<div class="col align-self-center" style="margin-top: 150px;">
				<div class="box01">
					<form action="/member/memberDelete" method="post" id="delForm">
						<div class="form-group has-feedback">
							<label class="control-label" for="userId">아이디</label> <input
								class="form-control" type="text" id="userId" name="userId"
								value="${member.userId}" readonly="readonly" />
						</div>
						<div class="form-group has-feedback">
							<label class="control-label" for="userPass">패스워드</label> <input
								class="form-control" type="password" id="userPass"
								name="userPass" />
						</div>
						<div class="form-group has-feedback">
							<label class="control-label" for="userName">성명</label> <input
								class="form-control" type="text" id="userName" name="userName"
								value="${member.userName}" readonly="readonly" />
						</div>
					</form>
					<div class="form-group has-feedback" style="float:right;">
						<button class="submit btn btn-success" type="button" id="submit">회원탈퇴</button>
						<button class="cancle btn btn-danger" type="button">취소</button>
					</div>
				</div>
			</div>
			<div class="col"></div>
		</div>
	</section>

</body>
</html>