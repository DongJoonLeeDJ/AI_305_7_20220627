<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"	crossorigin="anonymous">
<script	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="../resources/css/boardfont.css">
<link>
<title>게시판</title>
<style>
.home{
	border: 3px solid black;
	display:block;
	position: relative;
	top:-50px;
	left:450px;
}
.home :hover{
	border: 5px solid black;
	background-color: crimson;
	color: white;
}
.home a{
	font-size: 1.8rem;
	color: crimson;
}
.wrapper {
	width:100%;
 	place-items: center;
}
.content {
	max-widht:1500px;
	width:100%;
	height:auto;
	margin-top:55px;
	position:relative;
	place-items: center;
	display: grid;
	grid-template-rows: 70px 52px;
}
</style>

</head>
<body>
	<div class="wrapper">
	<div class="content">
		<div class="home"><a href="/">Go! portfolio</a></div>
		<div>
			<header>
				<h1>게시판</h1>
				<%@include file="../Navbar.jsp"%>
				<c:if test="${member != null}">
				<p style="position:relative; top:-10px; color:rgba(0,10,20,1); font-size: 1rem;">${member.userId}님환영합니다.</p>
				</c:if>
			</header>
		</div>
		<div>
			<hr />
	
			<div>
				<%@include file="nav.jsp"%>
			</div>
		</div>
		<div>
			<section>
				<form role="form" method="get">
					<table class="table table-hover" style="width:1100px;">
						<!-- style="color:white;" -->
						<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>등록일</th>
							</tr>
						</thead>
	
						<c:forEach items="${list}" var="list">
							<tr>
								<td><c:out value="${list.bno}" /></td>
								<td>
									<a href="/board/readView?bno=${list.bno}&page=${scri.page}&perPageNum=${scri.perPageNum}&searchType=${scri.searchType}&keyword=${scri.keyword}">
									<c:out value="${list.title}" />
									</a>
								</td>
								<td>
									<c:out value="${list.writer}" />
								</td>
								<td>
									<fmt:formatDate value="${list.regdate}"	pattern="yyyy-MM-dd" />
								</td>
							</tr>
						</c:forEach>
	
					</table>
					<div class="search row">
						<div class="col-xs-2 col-sm-2">
							<select name="searchType" class="form-control">
								<option value="n"
									<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>-----</option>
								<option value="t"
									<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>제목</option>
								<option value="c"
									<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>내용</option>
								<option value="w"
									<c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>작성자</option>
								<option value="tc"
									<c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}"/>>제목+내용</option>
							</select>
						</div>
	
						<div class="col-xs-10 col-sm-10">
							<div class="input-group">
								<input type="text" name="keyword" id="keywordInput"	value="${scri.keyword}" class="form-control" />
								 <span class="input-group-btn">
									<button id="searchBtn" type="button" class="btn btn-default">검색</button>
								</span>
							</div>
						</div>
	
						<script>
							$(function() { $('#searchBtn').click(
									function() {self.location = "list"
												+ '${pageMaker.makeQuery(1)}'
												+ "&searchType="
												+ $("select option:selected").val()
													+ "&keyword="
													+ encodeURIComponent($('#keywordInput').val());
												});
							});
						</script>
					</div>
					<br>
					<div class="col-md-offset-3">
						<ul class="pagination">
							<c:if test="${pageMaker.prev}">
								<li><a href="list${pageMaker.makeSearch(pageMaker.startPage - 1)}"><b>이전</b> </a></li>
							</c:if>
	
							<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
								<li	<c:out value="${pageMaker.cri.page == idx ? 'class=info' : ''}" />>
									<a href="list${pageMaker.makeSearch(idx)}">&nbsp;&nbsp;${idx}&nbsp;&nbsp;</a>
								</li>
							</c:forEach>
	
							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><a href="list${pageMaker.makeSearch(pageMaker.endPage + 1)}"><b>다음</b></a></li>
							</c:if>
							
						</ul>
					</div>
				</form>
			</section>
		</div>
	</div>
</div>
</body>
</html>