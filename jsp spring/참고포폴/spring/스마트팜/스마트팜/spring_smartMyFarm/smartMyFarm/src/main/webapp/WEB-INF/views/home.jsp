<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Smart MyFarm</title>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-light navbar-light">
  			<ul class="navbar-nav">
  				<li class="nav-item active">
      				<a class="nav-link" href='<c:url value="/"/>'>HOME</a>
    			</li>
    			<li class="nav-item">
      				<a class="nav-link" href='<c:url value="../board/list"/>'>My Farm Stroy</a>
    			</li>
    			<li class="nav-item">
      				<a class="nav-link" href='<c:url value="/tomato/list"/>'>생장일지</a>
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
<img alt="" src="/resources/img/smartmyfarm.png" width="1110px"/>
<script type="text/javascript">
	$(document).ready(function(){
		$("#logoutBtn").on("click", function(){
			location.href="Member/logout";
		})
		$("#signup").on("click", function(){
			location.href="Member/signup";
		})
		$("#updateBtn").on("click", function(){
			location.href="Member/memberUpdateView";
		})
	})
</script>
<form name='homeForm' method="post" action="/Member/login">
		<c:if test="${member == null}">
			<div class="form-inline mt-3" style="float: right;">
				<label for="id">아이디</label>
				<input type="text" id="id" name="id">
				<label for="pw">비밀번호</label>
				<input type="password" id="pw" name="pw">
				<button type="submit" class="btn btn-primary btn-sm ml-3">로그인</button>
				<button type="button" id="signup"class="btn btn-primary btn-sm ml-2">회원가입</button>
			</div>
		</c:if>
		<c:if test="${member != null }">
			<div class="jumbotron" style="float: right;">
				<h5>${member.id}님 환영 합니다.</h5>
				<button id="updateBtn" type="button" class="btn btn-primary btn-sm ml-2">회원정보 수정</button>
				<button id="logoutBtn" type="button" class="btn btn-primary btn-sm ml-2">로그아웃</button>
			</div>
		</c:if>
		<c:if test="${msg == false}">
			<p style="color: red;">로그인 실패! 아이디와 비밀번호 확인해주세요.</p>
		</c:if>
	</form>
</div>
<div class="container mt-5">
<h3>새소식</h3>
<div id="accordion">
  <div class="card">
    <div class="card-header">
      <a class="card-link" data-toggle="collapse" href="#collapseOne">
        ‘토마토’ 항산화 물질 높이는 재배 기술 주목
      </a>
    </div>
    <div id="collapseOne" class="collapse show" data-parent="#accordion">
      <div class="card-body">
        	<p>농촌진흥청(청장 허태웅)은 고추의 항산화 물질을 늘리기 위해 개발한 액비(물비료) 재배 기술을 토마토에 적용했을 때도 우수한 효과가 있음을 확인했다고 밝혔다.</p>
      		<img alt="" src="/resources/img/toto.png" />
      </div>
    </div>
  </div>

  <div class="card">
    <div class="card-header">
      <a class="collapsed card-link" data-toggle="collapse" href="#collapseTwo">
        	폭염 등 기상재해 예방‧복구 위해 현장 영농기술 지원 강화
      </a>
    </div>
    <div id="collapseTwo" class="collapse" data-parent="#accordion">
      <div class="card-body">
        <p>농촌진흥청(청장 허태웅)은 장마가 끝나고 서쪽지방을 중심으로 체감온도가 35도 이상으로 오르는 등 본격적인 폭염이 시작됨에 따라 농작물, 가축, 농업인 안전 등 폭염 피해 최소화를 위한 기술지원을 강화하기로 했다.</p>
      	<img alt="" src="/resources/img/hotsummer.jpg" />
      </div>
    </div>
  </div>

  <div class="card">
    <div class="card-header">
      <a class="collapsed card-link" data-toggle="collapse" href="#collapseThree">
        Collapsible Group Item #3
      </a>
    </div>
    <div id="collapseThree" class="collapse" data-parent="#accordion">
      <div class="card-body">
        Lorem ipsum..
      </div>
    </div>
  </div>

</div>
</div>
</body>
</html>
