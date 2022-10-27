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
<script	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>로그인</title>
</head>
<script type="text/javascript">
	$(document).ready(function() {
		//취소
		$(".cancle").on("click", function() {

			location.href = "/board/list";
		})
	})
</script>
<style>
.box01 {
	width: 430px;
	height: 270px;
	position: relative;
	padding: 25 35;
	margin: 25 25;
	z-index: 1;
}

.box01::before {
	height: 270px;
	width: 430px;
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

:root {
	--primary: #6441a5;
	--white: #ffffff;
	--greyLight-1: #e4ebf5;
	--greyLight-2: #c8d0e7;
	--shadow: 0.3rem 0.3rem 0.6rem var(--greyLight-2),
		-0.2rem -0.2rem 0.5rem var(--white);
	--inner-shadow: inset 0.2rem 0.2rem 0.5rem var(--greyLight-2),
		inset -0.2rem -0.2rem 0.5rem var(--white);
}
input
{
	width: 30px;
	max-height: 4.5vm;
	height:auto;
	border: none;
	border-radius: 1rem;
	outline: none;
	font-size: 2.5vmin;
	font-weight: bold;
	padding: 0 4vmin;
	box-shadow: var(--inner-shadow);
	background: var(--greyLight-1);
	color: var(--primary);
	caret-color: var(--primary);
	position:relative;
}

svg {
	width: 4.3vmin;
	height: 4.3vmin;
	border-radius: 0.2rem;
	box-shadow: var(--shadow);
	margin: 0 4vmin;
	cursor: pointer;
	position:absolute;
	left:330px;
	top:115px;
}

svg path {
	transition: all 0.25s 0.25s ease, all 0.25s ease;
	transform-origin: center center;
	stroke: var(--primary);
}
svg circle {
	transition: all 0.25s ease, all 0.25s 0.25s ease;
	transform-origin: center center;
	fill: var(--primary);
}
svg.close circle {
	transition: all 0.25s 0.25s ease, all 0.25s ease;
	transform: scale(0);
}
svg.close #top-eye-part {
	transition: all 0.25s ease, all 0.25s 0.25s ease;
	d: path("M10,50 Q50,110 90,50");
}
</style>
<body style="background-image: url('../resources/img/배경화면1.png')">
	<section id="container">
		<div class="container">
			<div class="row">
				<div class="col"></div>
				<div class="col align-self-center" style="margin-top: 150px;">
					<div class="box01">
						<form name='homeForm' method="post" action="/member/login">
							<div class="form-group has-feedback">
								<label class="control-label" for="userId">아이디</label>
								 <input	class="form-control" type="text" id="userId" name="userId" />
							</div>
							<div class="form-group has-feedback">
								<label class="control-label" for="userPass">패스워드</label> 
								<input class="form-control" type="password" id="userPass" name="userPass" ></input>
									<svg class="close" viewBox="0 0 100 100" >
										<path id="top-eye-part" d="M10,50 Q50,-10 90,50" fill="none" stroke-width="5"></path>
										<path id="bottom-eye-part" d="M10,50 Q50,110 90,50" fill="none" stroke-width="5"></path>
										<circle cx="50" cy="50" r="10" fill="black"></circle>
									</svg>
							</div>
							<div class="form-group has-feedback" style="float:right;margin-top:10px;">
								<button class="btn btn-success" type="submit">로그인</button>
								<button class="cancle btn btn-danger" type="button">취소</button>
							</div>
							<c:if test="${msg == false}">
								<p style="color: red; margin-top:80px;">로그인 실패! 아이디와 비밀번호 확인해주세요.</p>
							</c:if>
						</form>
					</div>
				</div>
				<div class="col"></div>
			</div>
		</div>
	</section>
<script type="text/javascript">
	const svg = document.querySelector("svg");
	const input = document.querySelectorAll("input")[1];
	svg.addEventListener("click", function () {
		this.classList.toggle("close");
		setTimeout(() => {
			input.type = input.type === "password" ? "text" : "password";
		}, 125);
	});
</script>
</body>

</html>