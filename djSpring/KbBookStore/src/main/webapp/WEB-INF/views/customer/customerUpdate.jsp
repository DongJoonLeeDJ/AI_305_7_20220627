<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 수정</title>
</head>
<body>
	<div class="d-grip gap-3">
		<%@ include file="../nav.jsp"%>
		<div class="container">
			<form method="post" id="updateCustomerForm">
				<h1 class="text-center p-2">고객 수정</h1>
				<div class="row">&nbsp;</div>
				<div class="row">
					<div class="col-2"></div>
					<div class="col-2">
						<h2>고객 ID</h2>
					</div>
					<div class="col-4">
						<input class="form-control" placeHolder=" 고객 ID" name="custid" disabled value="${data.custid }"></input>
					</div>
					<div class="col-4"></div>
				</div>
				<div class="row">
					<div class="col-2"></div>
					<div class="col-2">
						<h2>고객 이름</h2>
					</div>
					<div class="col-4">
						<input class="form-control" placeHolder="고객 이름" name="name" value="${data.name }"></input>
					</div>
					<div class="col-4"></div>
				</div>
				<div class="row">
					<div class="col-2"></div>
					<div class="col-2">
						<h2>고객 주소</h2>
					</div>
					<div class="col-4">
						<input class="form-control" placeHolder="주소" name="address" value="${data.address }"></input>
					</div>
					<div class="col-4"></div>
				</div>
				<div class="row">
					<div class="col-2"></div>
					<div class="col-2">
						<h2>연락처</h2>
					</div>
					<div class="col-4">
						<input class="form-control" placeHolder="연락처" name="phone" value="${data.phone }"></input>
					</div>
					<div class="col-4"></div>
				</div>
				<div class="row">&nbsp;</div>
				<div class="text-center">
					<input class="btn btn-primary" type="submit" value="고객 수정">
				</div>
			</form>
			<div class="row">&nbsp;</div>

		</div>
	</div>

	<%@ include file="../footer.jsp"%>
	<script>

		let updateCustomerForm = document.querySelector("#updateCustomerForm")
		let name  = document.querySelector('input[name=name]')
		let address = document.querySelector("input[name=address]")
	
		function isEmpty(tag) {
			return tag.value==''
		}
		
		updateCustomerForm.addEventListener("submit", function (event) {
			
			//빈 값 있으면 안 됨
			// price는 반드시 숫자 들어가야 함

				if(isEmpty(name)) {
					event.preventDefault()
					alert('이름이 공백일 수 없습니다.')
					return
				}
			
			
			
		})
	</script>
		<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>


			address.addEventListener("click", function(){ 
		        new daum.Postcode({
		            oncomplete: function(data) { 
		            	address.value = data.address; 
		            }
		        }).open();
		    });

</script>
</body>
</html>