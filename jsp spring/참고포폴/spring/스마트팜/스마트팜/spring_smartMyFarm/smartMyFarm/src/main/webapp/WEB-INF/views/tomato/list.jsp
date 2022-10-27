<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import= "java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Smart MyFarm</title>
<style type="text/css">
	.paging li {list-style: none; float: left; padding: 6px; }
</style>
</head>
<body>
	<header>
  		<%@include file="navbar.jsp" %>
    </header>
    <div class="container">
  		<h1>생장일지</h1>
  	</div>
  	<hr/>
  	<div class="container">
  	<form role="form"action="/board/write" method="get"><!--   -->
  	  	<div class="search">
  			<select name="searchType" class="custom-select-sm col-sm-2">
    			<option selected>-------</option>
    			<option value="t" <c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>제목</option>
    			<option value="c" <c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>내용
    			<option value="w" <c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>작성자</option>
    			<option value="tc" <c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}"/>>제목 + 내용</option>
  			</select>
  			<input type="text" name="keyword" id="keywordInput" value="${scri.keyword}"/>
  			<button id="searchBtn" type="button" class="btn btn-primary">검색</button>
  			<script type="text/javascript">
  				$(function(){
  					$('#searchBtn').click(function(){
  						self.location = "list?" + "${pageMaker.makeQuery(1)}" + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
  					});
  				});
  			</script>
  		</div> 
  		<table class="table table-hover" style="text-align: center; border: 2px solid=#dddddd;">
  			<thead style="background-color: #84A4BF; text-align: center;">
  				<tr>
  					<td>번호</td>
  					<td>주차</td>
  					<td>열매수</td>
  					<td>작성일</td>
  				</tr>
  			</thead>
  			<tbody>
  			<c:forEach items="${list}" var = "list">
  			<%-- <fmt:parseDate value='${list.date}' var='date' pattern='yyyy-mm-dd'/> --%>
  				<tr>
  					<td><a href="/tomato/readView?no=${list.no}&page=${scri.page}&perPageNum=${scri.perPageNum}&searchType=${scri.searchType}&keyword=${scri.keyword}"><c:out value="${list.no}"/></a></td>
  					<td><a href="/tomato/readView?no=${list.no}&page=${scri.page}&perPageNum=${scri.perPageNum}&searchType=${scri.searchType}&keyword=${scri.keyword}"><c:out value= "${list.week}"/></a></td>
  					<td><c:out value= "${list.fruit}"/></td> 
  					<td><c:out value="${list.date}"/></td>
  				</tr>
  			</c:forEach>
  			</tbody>
  		</table>
  	</form>
  		<a href='<c:url value='/tomato/writeView'/>' role="button" class="btn btn-primary">생장일지 작성하기</a>
  		<div class="paging">
  			<ul>
  				<c:if test="${page.prev}">
  					<li><a href="list${page.makeSearch(page.startPage -1)}">이전</a></li>
  				</c:if>
  				<c:forEach begin="${page.startPage}" end="${page.endPage}" var="idx">
    				<li><a href="list${page.makeSearch(idx)}">${idx}</a></li>
    			</c:forEach>
    			<c:if test="${page.next && page.endPage > 0}">
    				<li><a href="list${page.makeSearch(page.endPage + 1)}">다음</a></li>
    			</c:if>
  			</ul>
  		</div>
  	</div>

</body>
</html>