<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../../resources/css/Font.css"/>
<title>에러페이지</title>
</head>
<style>
.wrapper {
	width:100%;
  	display: grid;
 	place-items: center;
}
.content{
	position:relative;
	top:40%;
	display: grid; 
	gap:20px; 
	grid-template-columns: 500px 350px; 
}
.tag-aBox{
	display: grid;
	margin-left:180px;
	gap:20px;
	grid-template-columns:40px 100px;
}
a{
	text-decoration-line: none;
	color:rgb(90,190,190);
}
h1{
	font-family: 'Song Myung', serif;
}
</style>
<body>
<div class="wrapper">
<div class="content">
	<div>
		<h1 style="font-size:50px;">아직 준비중인<br>&nbsp;&nbsp; 서비스 입니다...</h1>
		<h3>&nbsp; &nbsp; 빠른 업로드로 더 나은 서비스를 제공하겠습니다</h3>
		<p style ="color:rgb(211,211,211); margin-left:135px;">Here are some helpful link, Thanks:</p>
		<div class="tag-aBox">
			<a href="/">home</a> <a href="javascript:window.history.back();">Back Page!</a>
		</div>
	</div>
	<div>
		<img src="../../resources/img/404에러용.png" style="position:relative; width:400px; height:400px; top:-70px;">
	</div>
</div>
</div>
</body>
</html>