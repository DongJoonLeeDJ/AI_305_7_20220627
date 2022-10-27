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

				if ($('#title').val() == "") {
					swal("실패!", "제목을 입력하세요", "error");
					return false;
				}

				if ($('#userid').val() == "") {
					swal("실패!", "이름을 입력하세요", "error");
					return false;
				}

				if ($('#content').val() == "") {
					swal("실패!", "내용을 입력하세요.", "error");
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
  		<h1>게시판</h1>
  	</div>
  	<hr/>
  	<div class="container">
  		<form naem="writeForm" action="/board/write" method="post"  enctype="multipart/form-data">
			<table class="table" style="text-align: center; border: 1px solid=#dddddd;">
				<c:if test="${member.id!=null}">
				<thead>
					<th>게시판 글 작성</th>
				</thead>
				<tbody>
					<tr>
						<td>
							<input type="text" class="form-control" placeholder="제목" name="title" maxlegth="50" id="title"/>
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" class="form-control" placeholder="작성자" name="userid" maxlegth="45" id="userid"/>
						</td>
					</tr>
					<tr>
						<td>
							<textarea type="text" class="form-control" placeholder="내용" id="content" name="content" maxlegth="1000" style="height:350px;"></textarea>
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