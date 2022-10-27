<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>게시판</title>
</head>
<script type="text/javascript">
	$(document).ready(function(){
		$("#cancel_btn").on("click",function(){
			event.preventDafault();
			location.href="/board/list";
		})
	})
</script>
<body>
	<header>
		<%@include file="navbar.jsp" %>
    </header>
    <script type="text/javascript">
	$(document).ready(function(){
		var formObj = $("form[name='readForm']");
		
		// 취소 
		$("#cancel_btn").on("click", function(){
			event.preventDefault();
			location.href = "/board/list";				
		});

    </script>
    <div class="container">
  		<h1>게시판</h1>
  	</div>
  	<hr/>
  	<div class="container">
  	<form name="updateForm" action="/board/update" method="post">
  	<input type="hidden" name="bno" value="${update.bno}" readonly="readonly"/>
<%--   	<c:forEach items="${read}" var="read"/>
 --%>  		<table class="table table-hover" style="text-align: center; border: 2px solid=#dddddd;">
  			<thead>
  				<thead>
  				
					<th colspan="3" style="background-color: #84A4BF; text-align: center;">게시글</th>
				</thead>
				<tbody>
				<%-- <c:forEach items="${read}" var="read"> --%>
				<fmt:parseDate value="${update.redate}" var='redate' pattern='yyyymmdd'/>
					<tr>
						<td Style="width:20%;">글 제목</td>
					    <td colspan="2"><input type="text" value="<c:out value='${update.title}'/>" class="form-control" name="title" id="title" maxlegth="50"></td>
					</tr>
					<tr>
						<td Style="width:20%;">작성자</td>
					    <td colspan="2"><input type="text" value="<c:out value='${update.userid}'/>"class="form-control" name="userid" id="userid" maxlegth="45"></td>
					</tr>
					<tr>
						<td Style="width:20%;">작성일자</td>
					    <td colspan="2">${update.redate}</td>
					</tr>
					<tr>
					    <td Style="width:20%;">내용</td>
					    <td colspan="2">
					    	<textarea class="form-control" id="content"maxlegth="1000" style="height:350px;"><c:out value='${update.content}'/></textarea>
					    </td>
					</tr>
				</tbody>
  		</table>
  		<button type="submit" class="btn btn-warning">수정</button>
  		<button type="submit" id="cancel_btn" class="btn btn-primary">취소</button>
  	</form>
</body>
</html>