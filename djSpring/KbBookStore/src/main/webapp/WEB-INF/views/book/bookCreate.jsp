<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 등록</title>
</head>
<body>
	<div class="d-grip gap-3">
		<%@ include file="../nav.jsp"%>
		<div class="container">
			<form method="post" role="form" autocomplete="off"
				enctype="multipart/form-data" id="registBookForm">
				<h1 class="text-center p-2">책 등록</h1>
				<div class="row">&nbsp;</div>
				<div class="row">
					<div class="col-2"></div>
					<div class="col-2">
						<h2>책 제목</h2>
					</div>
					<div class="col-4">
						<input class="form-control" placeHolder="책 제목" name="bookname"></input>
					</div>
					<div class="col-4"></div>
				</div>
				<div class="row">
					<div class="col-2"></div>
					<div class="col-2">
						<h2>Isbn</h2>
					</div>
					<div class="col-4">
						<input class="form-control" placeHolder="Isbn" name="bookisbn"></input>
					</div>
					<div class="col-4"></div>
				</div>
				<div class="row">
					<div class="col-2"></div>
					<div class="col-2">
						<h2>출판사</h2>
					</div>
					<div class="col-4">
						<input class="form-control" placeHolder="출판사" name="publisher"></input>
					</div>
					<div class="col-4"></div>
				</div>
				<div class="row">
					<div class="col-2"></div>
					<div class="col-2">
						<h2>가격</h2>
					</div>
					<div class="col-4">
						<input class="form-control" placeHolder="가격" name="bookprice"></input>
					</div>
					<div class="col-4"></div>
				</div>
				<div class="row">
					<div class="col-2"></div>
					<div class="col-2">
						<h2>책 이미지</h2>
					</div>
					<div class="col-4">

						<input type="file" class="form-control" name="bookImg"></input>
					</div>
					<div class="col-4"></div>
				</div>
				<div class="row">&nbsp;</div>
				<div class="text-center">
					<input class="btn btn-primary" type="submit" value="책 등록">
				</div>
			</form>
			<div class="row">&nbsp;</div>

		</div>
	</div>

	<%@ include file="../footer.jsp"%>
	<script>
		let registBookForm = document.querySelector("#registBookForm")
		let isbn = document.querySelector('input[name=bookisbn]')
		let bookname  = document.querySelector('input[name=bookname]')
		let price = document.querySelector('input[name=bookprice]')
		let publisher  = document.querySelector('input[name=publisher]')
		let bookImg  = document.querySelector('input[name=bookImg]')
		registBookForm.addEventListener("submit", function (event) {
			
			//빈 값 있으면 안 됨
			// price는 반드시 숫자 들어가야 함
			
			
			
			//console.log(bookname.value)
			console.log(isbn.value.length)
			console.log(price.value)
			console.log(isNaN(price.value))
			console.log(isbn.value=='')
			event.preventDefault()
		})
	</script>
</body>
</html>