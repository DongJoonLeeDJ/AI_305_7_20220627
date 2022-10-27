<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="kr">
<!-- <script type="text/javascript">
       window.onload = function () {
          document.getElementById('pd_search').onclick = function () {
             var pd_name = document.getElementById('pd_name');
             location.href = 'Product.jsp?pd_name=' + pd_name.value;
          }
       }
</script> -->

<!-- 카드 숨김/표시 토글 함수-->
<!-- <script>
      $(document).ready(function () {
         $("#all").click(function () {
       	allhide();
            $("#all_result").toggle();
         });
         $("#sim").click(function () {
        	 allhide();
            $("#sim_result").toggle();
         });
         $("#ins").click(function () {
        	 allhide();
            $("#ins_result").toggle();
         });
         $("#sna").click(function () {
        	 allhide();
            $("#sna_result").toggle();
         });
         $("#ice").click(function () {
        	 allhide();
            $("#ice_result").toggle();
         });
         $("#foo").click(function () {
        	 allhide();
            $("#foo_result").toggle();
         });
         $("#dri").click(function () {
        	 allhide();
            $("#dri_result").toggle();
         });
         $("#lif").click(function () {
        	 allhide();
            $("#lif_result").toggle();
         });

         function allhide() {
             $("#all_result").hide();
            $("#sim_result").hide();
            $("#ins_result").hide();
            $("#sna_result").hide();
            $("#ice_result").hide();
            $("#foo_result").hide();
            $("#dri_result").hide();
            $("#lif_result").hide();
         }
         
         function startView(){
             $("#sim_result").hide();
             $("#ins_result").hide();
             $("#sna_result").hide();
             $("#ice_result").hide();
             $("#foo_result").hide();
             $("#dri_result").hide();
             $("#lif_result").hide();
         }
         startView();
      });
</script> -->

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>GDGD Convenience Store</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
<!--     <link rel="stylesheet" href="/resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/style.css" type="text/css"> -->
    
    <!-- Css Styles -->
    <link rel="stylesheet" href="./resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="./resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="./resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="./resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="./resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="./resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="./resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="./resources/css/style.css" type="text/css">
</head>

<body>
<%System.out.println("오긴옴");%>

    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
    
    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__left">
                            <ul>
                                <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
                                <li>Free Shipping for all Order of $99</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__right">
                            <div class="header__top__right__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                                <a href="#"><i class="fa fa-pinterest-p"></i></a>
                            </div>
                            <div class="header__top__right__language">
                                <img src="/resources/img/language.png" alt="">
                                <div>English</div>
                                <span class="arrow_carrot-down"></span>
                                <ul>
                                    <li><a href="#">Spanis</a></li>
                                    <li><a href="#">English</a></li>
                                </ul>
                            </div>
                            <div class="header__top__right__auth">
                                <a href="#"><i class="fa fa-user"></i> Login</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="/"><img src="/resources/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li class="active"><a href="/">홈</a></li>
                            <li><a href="./Product">상품</a></li>
                            <li><a href="#">페이지</a>
                                <ul class="header__menu__dropdown">
			                        <li><a href="../Stock">재고</a></li>
			                        <li><a href="./Sales">Sales</a></li>
			                        <li><a href="./selectedPayment">selectedPayment</a></li>
			                        <li><a href="./selectedPaymentMonth">selectedPaymentMonth</a></li>
                                </ul>
                            </li>
                            <li><a href="#">빈방</a></li>
                            <li><a href="#">빈방</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                            <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                            <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                        </ul>
                        <div class="header__cart__price">item: <span>$150.00</span></div>
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
	<section class="hero">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="hero__categories">
						<div class="hero__categories__all">
							<i class="fa fa-bars"></i> <span>All departments</span>
						</div>
						<ul>
							<li><a id="all" href="/Product">전체</a></li>
							<li><a id="sim" href="#!">간편식품</a></li>
							<li><a id="ins" href="#!">즉석식품</a></li>
							<li><a id="sna" href="#!">과자</a></li>
							<li><a id="ice" href="#!">아이스크림</a></li>
							<li><a id="foo" href="#!">기타식품</a></li>
							<li><a id="dri" href="#!">음료</a></li>
							<li><a id="lif" href="#!">생활용품</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-9">
					<div class="hero__search">
						<div class="hero__search__form">
							<form action="#">
								<div class="hero__search__categories">
									All Categories <span class="arrow_carrot-down"></span>
								</div>
								<input type="text" class="form-control col-md-10" placeholder="Enter search" id="pd_name" />
								<button type="submit" class="site-btn" id="pd_search">SEARCH</button>
							</form>
						</div>
						<div class="hero__search__phone">
							<div class="hero__search__phone__icon">
								<i class="fa fa-phone"></i>
							</div>
							<div class="hero__search__phone__text">
								<h5>+65 11.188.888</h5>
								<span>support 24/7 time</span>
							</div>
						</div>
					</div>
					<div class="hero__item set-bg" data-setbg="/resources/img/hero/banner.jpg">
						<div class="col-lg-10">
<!-- 							<div class="form-inline mb-4">
								<input type="text" class="form-control col-md-10 mb-2 my-4 mr-4" placeholder="Enter search" id="pd_name" />
								<input type="button" value="검색" id="pd_search" class="btn btn-primary" />
							</div> -->
							<div class="row mb-5" id="all_result">
								<c:forEach items="${list}" var="product">
								<div class="col-lg-4 col-md-6 mb-4">
									<div class="card h-100">
										<a href="#!"><img class="card-img-top" src="https://via.placeholder.com/700x400" alt="..." /></a>
										<div class="card-body">
											<h6 class="card-title">
												${product.pd_code}) 
											</h6>
											<p class="card-text">
												${product.pd_name}
											</p>
											<p class="card-text">
											 	${product.pd_classific}	
											</p>
											<h5>${product.pd_price}</h5>
										</div>
										<div class="card-footer">
											<small class="text-muted">${product.pd_type}</small>
										</div>
									</div>
								</div>
								</c:forEach>
							</div>
							<%-- <div class="row mb-4" id="sim_result">
								<c:forEach items="${list}" var="productList">
									<div class="col-lg-4 col-md-6 mb-4">
										<div class="card h-100">
											<a href="#!"> <img class="card-img-top" src="https://via.placeholder.com/700x400" alt="..." /></a>
											<div class="card-body">
												<h6 class="card-title">
													${ProductList.pd_code}
													${ProductList.pd_name}
												</h6>
												<p class="card-text">
													${ProductList.pd_classific}
													${ProductList.pd_exdate}
												</p>
												<h5>${ProductList.pd_price}</h5>
											</div>
											<div class="card-footer">
												<small class="text-muted"> ${ProductList.pd_type}%></small>
											</div>
										</div>
									</div>
								</c:forEach>
							</div> --%>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero Section End -->
    
    
	<!--상품 목록 리스트-->
			<%-- <div class="col-lg-9">
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
							<img class="d-block img-fluid" src="https://via.placeholder.com/900x350" alt="First slide" />
						</div>
						<div class="carousel-item">
							<img class="d-block img-fluid" src="https://via.placeholder.com/900x350" alt="Second slide" />
						</div>
						<div class="carousel-item">
							<img class="d-block img-fluid" src="https://via.placeholder.com/900x350" alt="Third slide" />
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next"> 
						<span class="carousel-control-next-icon" aria-hidden="true"></span> 
						<span class="sr-only">Next</span>
					</a>
				</div>
					<div class="form-inline mb-4">
						<input type="text" class="form-control col-md-10 mb-2 my-4 mr-4" placeholder="Enter search" id="pd_name"/>
						<input type="button" value="검색" id="pd_search" class="btn btn-primary" />
					</div>
				<div class="row mb-4" id="all_result">
					<c:forEach items="${list}" var="productList">
						<div class="col-lg-4 col-md-6 mb-4">
							<div class="card h-100">
								<a href="#!"><img class="card-img-top"
									src="https://via.placeholder.com/700x400" alt="..." /></a>
								<div class="card-body">
									<h6 class="card-title"> <a href="#!"> <img
										class="card-img-top" src="https://via.placeholder.com/700x400"
										alt="..." />
									</a>
									<div class="card-body">
										<h6 class="card-title">${ProductList.pd_code}
											${ProductList.pd_name}</h6>
										<p class="card-text">${ProductList.pd_classific}
											${ProductList.pd_exdate}</p>
										<h5>${ProductList.pd_price}</h5>
									</div>
									<div class="card-footer">
										<small class="text-muted"> ${ProductList.pd_type}%></small>
									</div>
								</div>
							</div>
					</c:forEach>
				</div>
				<div class="row mb-4" id="sim_result">
					<c:forEach items="${list}" var="productList">
						<div class="col-lg-4 col-md-6 mb-4">
							<div class="card h-100">
								<a href="#!"><img class="card-img-top" src="https://via.placeholder.com/700x400" alt="..." /></a>
								<div class="card-body">
									<h6 class="card-title">
										${ProductList.pd_code}
										${ProductList.pd_name}
									</h6>
									<p class="card-text">
										${ProductList.pd_classific}
										${ProductList.pd_exdate}
									</p>
									<h5>${ProductList.pd_price}</h5>
								</div>
								<div class="card-footer">
									<small class="text-muted"> ${ProductList.pd_type}%></small>
								</div>
							</div>
						</div>
					</c:forEach>
				</div> --%>
				<%-- <div class="row mb-4" id="ins_result">
					<%
					for (int i = 0; i < list.size(); i++) {
						Product ppu = list.get(i);
						if (ppu.getPd_classific().equals("instant")) {
					%>
					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#!"><img class="card-img-top" src="https://via.placeholder.com/700x400" alt="..." /></a>
							<div class="card-body">
								<h6 class="card-title"> <a href="#!"> <%out.println(ppu.getPd_code() + ")");%>
									<%out.println(ppu.getPd_name());%> </h6>
								</a>
								<p class="card-text">
									<%out.print(ppu.getPd_classific() + " 유통기한 : ");%>
									<%out.print(ppu.getPd_exdate() + "일");%>
								</p>
								<h5>
									<%out.print(ppu.getPd_price() + "원");%>
								</h5>
							</div>
							<div class="card-footer">
								<small class="text-muted"> <%out.print(ppu.getPd_type());%> </small>
							</div>
						</div>
					</div>
					<%
						}
					}					
					%>
				</div>
				<div class="row mb-4" id="sna_result">
					<%
					for (int i = 0; i < list.size(); i++) {
						Product ppu = list.get(i);
						if (ppu.getPd_classific().equals("snack")) {
					%>
					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#!"><img class="card-img-top" src="https://via.placeholder.com/700x400" alt="..." /></a>
							<div class="card-body">
								<h6 class="card-title"> <a href="#!"> <%out.println(ppu.getPd_code() + ")");%>
									<%out.println(ppu.getPd_name());%> </h6>
								</a>
								<p class="card-text">
									<%out.print(ppu.getPd_classific() + " 유통기한 : ");%>
									<%out.print(ppu.getPd_exdate() + "일");%>
								</p>
								<h5>
									<%out.print(ppu.getPd_price() + "원");%>
								</h5>
							</div>
							<div class="card-footer">
								<small class="text-muted"> <%out.print(ppu.getPd_type());%>
								</small>
							</div>
						</div>
					</div>
					<%
						}
					}
					%>
				</div>
				<div class="row mb-4" id="ice_result">
					<%
					for (int i = 0; i < list.size(); i++) {
						Product ppu = list.get(i);
						if (ppu.getPd_classific().equals("icecream")) {
					%>
					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#!"><img class="card-img-top"
								src="https://via.placeholder.com/700x400" alt="..." /></a>
							<div class="card-body">
								<h6 class="card-title"> <a href="#!"> <%out.println(ppu.getPd_code() + ")");%>
									<%out.println(ppu.getPd_name());%> </h6> 
									</a>
								<p class="card-text">
									<%out.print(ppu.getPd_classific() + " 유통기한 : ");%>
									<%out.print(ppu.getPd_exdate() + "일");%>
								</p>
								<h5>
									<%out.print(ppu.getPd_price() + "원");%>
								</h5>
							</div>
							<div class="card-footer">
								<small class="text-muted"> <%out.print(ppu.getPd_type());%>
								</small>
							</div>
						</div>
					</div>
					<%
						}
					}
					%>
				</div>
				<div class="row mb-4" id="foo_result">
					<%
					for (int i = 0; i < list.size(); i++) {
						Product ppu = list.get(i);
						if (ppu.getPd_classific().equals("food")) {
					%>
					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#!"><img class="card-img-top"
								src="https://via.placeholder.com/700x400" alt="..." /></a>
							<div class="card-body">
								<h6 class="card-title"> <a href="#!"> <%out.println(ppu.getPd_code() + ")");%>
									<%out.println(ppu.getPd_name());%> </h6>
								</a>
								<p class="card-text">
									<%out.print(ppu.getPd_classific() + " 유통기한 : ");%>
									<%out.print(ppu.getPd_exdate() + "일");%>
								</p>
								<h5>
									<%out.print(ppu.getPd_price() + "원");%>
								</h5>
							</div>
							<div class="card-footer">
								<small class="text-muted"> <%out.print(ppu.getPd_type());%>
								</small>
							</div>
						</div>
					</div>
					<%
						}
					}
					%>
				</div>
				<div class="row mb-4" id="dri_result">
					<%
					for (int i = 0; i < list.size(); i++) {
						Product ppu = list.get(i);
						if (ppu.getPd_classific().equals("drink")) {
					%>
					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#!"><img class="card-img-top"
								src="https://via.placeholder.com/700x400" alt="..." /></a>
							<div class="card-body">
								<h6 class="card-title"> <a href="#!"> <%out.println(ppu.getPd_code() + ")");%>
									<%out.println(ppu.getPd_name());%> </h6>
								</a>
								<p class="card-text">
									<%out.print(ppu.getPd_classific() + " 유통기한 : ");%>
									<%out.print(ppu.getPd_exdate() + "일");%>
								</p>
								<h5>
									<%out.print(ppu.getPd_price() + "원");%>
								</h5>
							</div>
							<div class="card-footer">
								<small class="text-muted"> <%out.print(ppu.getPd_type());%>
								</small>
							</div>
						</div>
					</div>
					<%
					}
					}
					%>
				</div>
				<div class="row mb-4" id="lif_result">
					<%
					for (int i = 0; i < list.size(); i++) {
						Product ppu = list.get(i);
						if (ppu.getPd_classific().equals("life")) {
					%>
					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#!"><img class="card-img-top"
								src="https://via.placeholder.com/700x400" alt="..." /></a>
							<div class="card-body">
								<h6 class="card-title"> <a href="#!"> <%out.println(ppu.getPd_code() + ")");%>
									<%out.println(ppu.getPd_name());%> </h6>
								</a>
								<p class="card-text">
									<%out.print(ppu.getPd_classific() + " 유통기한 : ");%>
									<%out.print(ppu.getPd_exdate() + "일");%>
								</p>
								<h5>
									<%out.print(ppu.getPd_price() + "원");%>
								</h5>
							</div>
							<div class="card-footer">
								<small class="text-muted"> <%out.print(ppu.getPd_type());%>
								</small>
							</div>
						</div>
					</div>
					<%
					}
					}
					%>
				</div> --%>
			</div>
		</div>
	</div>
	<!-- Footer-->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy 상준, 준석, 재혁, 승직 2021</p>
		</div>
	</footer>
	
	
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="./resources/js/jquery-3.3.1.min.js"></script>
    <script src="./resources/js/bootstrap.min.js"></script>
    <script src="./resources/js/jquery.nice-select.min.js"></script>
    <script src="./resources/js/jquery-ui.min.js"></script>
    <script src="./resources/js/jquery.slicknav.js"></script>
    <script src="./resources/js/mixitup.min.js"></script>
    <script src="./resources/js/owl.carousel.min.js"></script>
    <script src="./resources/js/main.js"></script>
</body>

</html>