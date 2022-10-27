<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="/resources/css/style2.css"/>
<title>Smart MyFarm</title>
</head>
<script type="text/javascript">
	$(document).ready(function(){
		$("#logoutBtn").on("click", function(){
			location.href="/Member/logout";
		})
		
	})
</script>
<body>
	<nav class="navbar navbar-expand-sm bg-light navbar-light">
  			<ul class="navbar-nav">
  				<li class="nav-item">
      				<a class="nav-link" href='<c:url value="/"/>'>HOME</a>
    			</li>
    			<li class="nav-item active">
      				<a class="nav-link" href='<c:url value="../board/list"/>'>My Farm Stroy</a>
    			</li>
    			<li class="nav-item dropdown">
      				<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">회원관리</a>
      				<div class="dropdown-menu">
        				<c:if test="${member == null}"><a class="dropdown-item" href="<c:url value='../Member/loginView'/>">로그인</a></c:if>
        				<c:if test="${member != null}"><a class="dropdown-item" href="/Member/logout">로그아웃</a></c:if>
        				<a class="dropdown-item" href="<c:url value='/Member/signup'/>">회원가입</a>
      				</div>
    			</li>
    		</ul>
    	</nav>
<!-- 로그인 양식 -->
<div class="container">
	<div class="col-lg-4"></div>
	<div class="col-lg-4">
		<div class="jumbotron mt-5" >
			<form name="loginForm" method="post"action="/Member/login">
				<h3 Style="text-align: center;">로그인</h3>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="아이디" id="id"name="id" maxlength="20">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" placeholder="비밀번호" id="pw"name="pw" maxlength="20">
				</div>
				<input type="submit" class="btn btn-primary form-control" value="로그인">
				<a href="<c:url value='/Member/signup'/>">+ 회원가입</a>
			</form>
		</div>
	</div>
	<div class="col-lg-4">
</div>
</body>
</html>