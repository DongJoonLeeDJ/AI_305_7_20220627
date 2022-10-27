<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Imagetoolbar" content="no" />
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/jquery/3.2.1/jquery.min.js"></script> -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>게시판</title>
</head>
<script type="text/javascript">
		$(document).ready(function(){
			$('#write_btn').click(function() {

				if ($('#length').val() == "") {
					swal("실패!", "길이를 입력하세요", "error");
					return false;
				}

				if ($('#height').val() == "") {
					swal("실패!", "높이를 입력하세요", "error");
					return false;
				}

				if ($('#width').val() == "") {
					swal("실패!", "줄기굵기를 입력하세요.", "error");
					return false;
				}
			});
		});
	</script>

<body>
	<header>
  		<%@include file="navbar.jsp" %>
    </header>
    <div class="container">
  		<h1>생장일지</h1>
  	</div>
  	<hr/>
  	<div class="container">
  		<form naem="writeForm" action="/tomato/write" method="post"  enctype="multipart/form-data">
			<table class="table" style="text-align: center; border: 1px solid=#dddddd;">
				<c:if test="${member.id!=null}">
				<thead>
					<th>생장일지 작성</th>
				</thead>
				<tbody>
					<tr>
						<td>
							<input type="text" class="form-control" placeholder="생장길이" name="length" id="length"/>
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" class="form-control" placeholder="화방높이" name="height"  id="height"/>
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" class="form-control" placeholder="줄기굵기" id="width" name="width" />
						</td>
					</tr>
					
					<tr>
						<td>
							<input type="text" class="form-control" placeholder="잎 길이" name="leaf_len" id="leaf_len"/>
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" class="form-control" placeholder="잎수 " name="leaf"  id="leaf"/>
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" class="form-control" placeholder="착과군" id="Fruit_group" name="Fruit_group" />
						</td>
					</tr>
					
					<tr>
						<td>
							<input type="text" class="form-control" placeholder="개화군" name="flower" id="flower"/>
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" class="form-control" placeholder="열매수 " name="fruit"  id="fruit"/>
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" class="form-control" placeholder="주차" id="week" name="week" />
						</td>
					</tr>
					<tr>
						<td>
							<input type="file" name=""file>
						</td>
					</tr>
					<tr>
						<td>
							<button type="submit" id="write_btn" class="btn btn-primary">작성완료</button>
						</td>
					</tr>
				</c:if>
				<c:if test="${member.id == null}">
					<p>로그인 후에 작성하실 수 있습니다.</p>
				</c:if>
				</tbody>
			</table> 		
  		</form>
  	</div>
</body>
</html>