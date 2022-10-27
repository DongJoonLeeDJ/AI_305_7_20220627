<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	 	<title>게시판</title>
	 	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="Cache-Control" content="no-cache" />
		<meta http-equiv="Pragma" content="no-cache" />
		<meta http-equiv="Imagetoolbar" content="no" />
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!-- bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	</head>
	<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='updateForm']");
			
			$("#cancel_btn").on("click", function(){
				location.href = "/board/readView?bno=${replyUpdate.bno}"
					   + "&page=${scri.page}"
					   + "&perPageNum=${scri.perPageNum}"
					   + "&searchType=${scri.searchType}"
					   + "&keyword=${scri.keyword}";
			})
			
		})
		
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
				<form name="updateForm" role="form" method="post" action="/board/replyUpdate">
					<input type="hidden" name="bno" value="${replyUpdate.bno}" readonly="readonly"/>
					<input type="hidden" id="rno" name="rno" value="${replyUpdate.rno}" />
					<input type="hidden" id="page" name="page" value="${scri.page}"> 
					<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}"> 
					<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}"> 
					<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}"> 
					<table class="table table-hover" style="text-align: center; border: 2px solid=#dddddd;">
  						<thead>
							<th colspan="3" style="background-color: #84A4BF; text-align: center;">댓글 수정</th>
						</thead>
						<tbody>
							<tr>
								<td Style="width:20%;">내용</td>
					    		<td colspan="2"><input type="text" value="${replyUpdate.content}" class="form-control" name="content" id="content" maxlegth="75"></td>
							</tr>
						</tbody>
  					</table>
  					<button type="submit" id="update_btn" class="btn btn-warning">수정</button>
  					<button type="button" id="cancel_btn" class="btn btn-primary">취소</button>
				</form>
			</div>
			<hr />
		</div>
	</body>
</html>