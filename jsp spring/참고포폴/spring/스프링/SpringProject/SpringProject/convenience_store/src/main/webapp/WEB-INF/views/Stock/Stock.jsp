<%@page import="com.store.gdgd.stock.Stock_DBManager"%>
<%@page import="com.store.gdgd.stock.Stock"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="" />
<meta name="author" content="" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link href="css/styles.css" rel="stylesheet" />

<title>Stock 페이지</title>

<!-- <script>
	$(document).ready(function() {
		$("#allsto").click(function() {
			allhide();
			$("#allsto_result").toggle();
		});
		function allhide() {
			$("#allsto_result").hide();
		}
		allhide();
	});
</script> -->

</head>
<body>
	<!-- 상단 네비바-->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container">
			<a class="navbar-brand" href="#!">Start Bootstrap</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="../index.jsp">
							Home <span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#!">About</a></li>
					<li class="nav-item"><a class="nav-link" href="#!">Services</a></li>
					<li class="nav-item"><a class="nav-link" href="#!">Contact</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!--왼쪽 목록 리스트-->
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<h1 class="my-4">Shop Name</h1>
				<div class="list-group">
					<a class="list-group-item" id="allsto" href="#!">재고현황</a>
					<a class="list-group-item" href="Product.jsp">상품으로 돌아가기</a>
					
				</div>
			</div>
			<div class="col-lg-9 mb-4">
				<div class="carousel slide my-4" id="carouselExampleIndicators"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li class="active" data-target="#carouselExampleIndicators"
							data-slide-to="0"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner" role="listbox">
						<div class="carousel-item active">
							<img class="d-block img-fluid"
								src="https://via.placeholder.com/900x350" alt="First slide" />
						</div>
						<div class="carousel-item">
							<img class="d-block img-fluid"
								src="https://via.placeholder.com/900x350" alt="Second slide" />
						</div>
						<div class="carousel-item">
							<img class="d-block img-fluid"
								src="https://via.placeholder.com/900x350" alt="Third slide" />
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
				<div class="form-inline mb-4">
					<input type="text" class="form-control col-md-10 mb-2 my-4 mr-4"
						placeholder="Enter search" id="pd_name"> <input
						type="button" value="검색" id="pd_search" class="btn btn-primary" />
				</div>
				<div class="row" id="allsto_result">
					
					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#!"><img class="card-img-top"
								src="https://via.placeholder.com/700x400" alt="..." /></a>
							<div class="card-body">
								<h6 class="card-title">
								</h6>
								<p class="card-text">
<%-- 									<%out.print(stu.getRec_date() + "일 부터");%> --%>
									<br>
<%-- 									<%out.print(stu.getDis_date() + "일 까지");%> --%>
								</p>								
							</div>
							<div class="card-footer">
								<h6 class="text-muted">
<%-- 								<%out.println(stu.getAmount() + "개");%> --%>
								</h6>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer-->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy 상준, 준석, 재혁, 승직 2021</p>
		</div>
	</footer>
</body>
</html>