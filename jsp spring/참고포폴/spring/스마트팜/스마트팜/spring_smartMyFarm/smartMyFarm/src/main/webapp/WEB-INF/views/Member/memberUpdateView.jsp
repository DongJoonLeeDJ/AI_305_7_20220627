<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%String ctx = (String)request.getContextPath();  //콘텍스트명 얻어오기.
//헤더 캐시를 제어하기 위한 내장 객체
response.setHeader("Pragma-directive","no-cache");
response.setHeader("Cache-directive","no-cache");
response.setHeader("Pragma","no-cache");
response.setHeader("Cache-Control","no-cache");
response.setDateHeader("Expires",0);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Smart MyFarm</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Imagetoolbar" content="no" />
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/resources/css/Style.css"/>
<style type="text/css">
label {
	margin-bottom: 0px;
}

#idcheck {
	margin-left: 0px
}

body {
	background-color: #e9ecef
}
</style>


</head>
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
<div class="jumbotron ">
	<div class="jumbotron" align="center">
		<header>
			<p class="display-1">회원정보 수정</p>
		</header>

		<form id="updateForm"action="/Member/memberUpdate" method="post" class='col-5'>
			<div class="form-group">
					<label class="float-left mt-2" for="id">아이디:</label>
					<input class="form-control" type="text" id="id" name="id" value="${member.id}" readonly="readonly"/>
			</div>
			<div class="form-group">
				<label for="NAME" class="float-left mt-2">성명:</label>
				 <input type="text" class="form-control mt-2" id="name" name="name" value="${member.name}"/>
			</div>
			<div class="form-group">
				<label for="pwd" class="float-left mt-2">비밀번호:</label>
				 <input type="password" class="form-control mt-2" id="pw" name="pw" placeholder="비밀번호를 입력하세요."/>
			</div>
			<div>
				<label for="chpwd" class="float-left mt-2">비밀번호 확인:</label> <input
					type="password" class="form-control mt-2" id="pw2"
					placeholder="비밀번호를  재입력하세요."/>
				<div id="pw_check"></div>
			</div>
			<div class="form-group">
				<label for="phone" class="float-left mt-2">전화번호:</label> <input
					type="text" class="form-control mt-2" id="phone" name="phone"
					value="${member.phone}"/>
			</div>
			<div class="form-group">
				<label for="address" class="float-left mt-2">주소:</label> <input
					type="text" class="form-control mt-2" id="address" name="address"
					value="${member.address}"/>
			</div>
			<div class="form-group">
				<button type="button" class="btn btn-danger mt-3 col-3 float-left" id="cancel">취소</button>
				<button type="submit" class="btn btn-success mt-3 col-3 float-right" id="OK">회원정보 수정</button>
			</div>
		</form>
	</div>
</div>
	<footer align="center"><p>Copyright ⓒ By MOHW. All Rights Reserved.</p></footer>
</body>
<script type="text/javascript">
$(document).ready(function(){	
	$('#OK').click(function() {
		if (${member.id}.val() == $('#pw').val()) {
			swal("실패!", "아이디와 비밀번호가 동일합니다.", "error");
			return false;
		}

		if ($('#pw').val() == "") {
			swal("실패!", "비밀번호를 입력하세요!", "error");
			return false;
		}
		if ($('#pw2').val() == "") {
			swal("실패!", "비밀번호를 입력하세요!", "error");
			return false;
		}
		if ($('#pw').val() != $('#pw2').val()) {
			swal("실패!", "비밀번호가 일치하지 않습니다.", "error");
			return false;
		}
		$.ajax({
			url : "/Member/pwChk",
			type : "POST",
			dateType : "json",
			data : $("#updateForm").serializeArray(),
			success: function(data){
				
				if(data==true){
					if(confirm("회원수정하시겠습니까?")){
						$("#updateForm").submit();
					}
					
				}else{
					alert("패스워드가 틀렸습니다.");
					return;
					
				}
			}
		})
	});

	//취소버튼
	$('#cancel').click(function() {
		event.preventDefault();
		location.href = "/";
	});
});
</script>

</html>