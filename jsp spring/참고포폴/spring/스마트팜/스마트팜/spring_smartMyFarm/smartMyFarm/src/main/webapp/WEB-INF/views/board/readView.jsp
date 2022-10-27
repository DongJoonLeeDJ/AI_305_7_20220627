<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="UTF-8">
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
<title>게시판</title>
</head>
<script type="text/javascript">

	$(document).ready(function(){
		var formObj = $("form[name='readForm']");
		
		// 수정 
		$("#update_btn").on("click", function(){
			
			formObj.attr("action", "/board/updateView");
			formObj.attr("method", "get");
			formObj.submit();				
		})
		
		// 삭제
		$("#delete_btn").on("click", function(){
			var deleteYN = confirm("삭제하시겠습니까?");
			if(deleteYN == true){
			swal("삭제!", "삭제되었습니다.", "info");
			formObj.attr("action", "/board/delete");
			formObj.attr("method", "post");
			formObj.submit();
			}
		})
		
		// 취소
		$("#list_btn").on("click", function(){
			
			location.href = "/board/list?page=${scri.page}"
				+"&perPageNum=${scri.perPageNum}"
				+"&searchType=${scri.searchType}&keyword=${scri.keyword}";
		})
	
		$("#replyWriteBtn").on("click", function(){
			var formObj = $("form[name='replyForm']");
			formObj.attr("action","/board/replyWrite");
			formObj.submit();
		})
		//댓글 수정 View
		$("#replyUpdateBtn").on("click", function(){
			var deleteYN = confirm("수정하시겠습니까?");
			if(deleteYN == true){
				location.href = "/board/replyUpdateView?bno=${read.bno}"
					+ "&page=${scri.page}"
					+ "&perPageNum=${scri.perPageNum}"
					+ "&searchType=${scri.searchType}"
					+ "&keyword=${scri.keyword}"
					+ "&rno="+$(this).attr("data-rno");
			}
		});
				
	//댓글 삭제 View
		$("#replyDeleteBtn").on("click", function(){
			var deleteYN = confirm("삭제하시겠습니까?");
			if(deleteYN == true){
			swal("삭제!", "삭제되었습니다.", "info");
			formObj.attr("action", "/board/replyDelete?bno=${read.bno}"
					+ "&page=${scri.page}"
					+ "&perPageNum=${scri.perPageNum}"
					+ "&searchType=${scri.searchType}"
					+ "&keyword=${scri.keyword}"
					+ "&rno="+$(this).attr("data-rno"));
			formObj.attr("method", "post");
			formObj.submit();
			}
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
  		<form name="readForm" method="post">
			<input type="hidden" id="bno" name="bno" value="${read.bno}" />
			<input type="hidden" id="page" name="page" value="${scri.page}"> 
 		 	<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}"> 
  			<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}"> 
  			<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}"> 
		</form>
  		<table class="table table-hover" style="text-align: center; border: 2px solid=#dddddd;">
  			<thead>
  				<thead>
					<th colspan="3" style="background-color: #84A4BF; text-align: center;">게시글</th>
				</thead>
				<tbody>
				<%-- <c:forEach items="${read}" var="read"> --%>
				<%-- <fmt:parseDate value='${read.redate}' var='redate' pattern='yyyymmdd'/> --%>
					<tr>
						<td Style="width:20%;">글 제목</td>
					    <td colspan="2">${read.title}</td>
					</tr>
					<tr>
						<td Style="width:20%;">작성자</td>
					    <td colspan="2">${read.userid}</td>
					</tr>
					<tr>
						<td Style="width:20%;">작성일자</td>
					    <td colspan="2">${read.redate}<%-- <fmt:formatDate value="${redate}" pattern="yyyy-MM-dd"/> --%></td>
					</tr>
					<tr>
						<td Style="width:20%;">내용</td>
					    <td colspan="2">${read.content}</td>
					</tr>
				</tbody>
  		</table>
  		<div>
  			<button type="submit" id="update_btn" class="btn btn-warning">수정</button>
  			<button type="submit" id="delete_btn" class="btn btn-danger">삭제</button>
			<button type="submit" id="list_btn" class="btn btn-primary">목록</button>
  		</div>
		<!-- 댓글 -->
		<div id="reply">
			<div class="replyList">	
				<table class="table table-hover" style="text-align: center; border: 2px solid=#dddddd;">
  					<thead>
						<th colspan="5" style="text-align: center;">댓글</th>
					</thead>
					<c:forEach items= "${replyList}" var="replyList">
					<tbody>	
					
						<tr>
							<td Style="width:20%;">${replyList.userid}</td>
					    	<td colspan="3">${replyList.content}</td>
					    	<td colspan="1">
					    		<button type="submit" class="btn btn-warning" id="replyUpdateBtn" data-rno="${replyList.rno}">수정</button>
  								<button type="submit" class="btn btn-danger" id="replyDeleteBtn" data-rno="${replyList.rno}">삭제</button>
					    	</td>
						</tr>
					</tbody>
					</c:forEach>
  				</table>
			</div>
		</div>  	
  		<form role="form" name="replyForm" method="post">
  			<input type="hidden" id="bno" name="bno" value="${read.bno}" />
  			<input type="hidden" id="page" name="page" value="${scri.page}"> 
  			<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}"> 
  			<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}"> 
  			<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}"> 
			<table class="table" style="text-align: center; border: 1px solid=#dddddd;">
				<thead>
					<th>댓글 작성</th>
				</thead>
				<tbody>
					<tr>
						<td>
							<input type="text" class="form-control" placeholder="작성자" name="userid" maxlegth="45" id="userid"/>
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" class="form-control" placeholder="내용" id="content" name="content" maxlegth="75"/>
						</td>
					</tr>
					<tr>
						<td>
							<button type="button" id="replyWriteBtn" class="btn btn-primary">작성완료</button>
						</td>
					</tr>
				</tbody>
			</table> 		
  		</form>
  	</div>
</body>
</html>