<%@page import="com.store.gdgd.sale.Sales1"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매출관리페이지</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="http://d3js.org/d3.v3.min.js" charset="UTF-8"></script>	
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/style.css" type="text/css">

<style type="text/css">
	body{
/* 		 text-align:center */
	}
	#sales_number{
		width:300px;
	}

</style>	
<script type="text/javascript">
	window.onload = function() {
		today = new Date();
		today = today.toISOString().slice(0, 10);
		bir = document.getElementById("time_select");
		bir.value = today;
		
		document.getElementById('sn_search').onclick = function() {
			var sales_number = document.getElementById('sales_number');
			// 			alert('id='+id.value);
			// 			alert('pw='+pw.value);
			location.href = '/SaleByNumber?sales_number=' + sales_number.value;
			//location.href = '../Controller/SalesFunc2.jsp?sales_number=' + sales_number.value;
		}
		document.getElementById('time_select_btn').onclick= function(){
			var time_select = document.getElementById('time_select');
			var link= '/SaleByDate?time_select='+time_select.value;
			location.href = link;
			//acyncMovePage(link);
		}
		document.getElementById('week_select_btn').onclick=function(){
			var time_select = document.getElementById('time_select');
			var link = '/SaleByWeek?time_select='+time_select.value;
			location.href = link;
			//acyncMovePage(link);
		}
		document.getElementById('month_select_btn').onclick=function(){
			var time_select = document.getElementById('time_select');
			var link = '/SaleByMonth?time_select='+time_select.value;
			location.href = link;
			//acyncMovePage(link);
		}
	}
</script>

<!-- 버튼 눌렀을떄 페이지 전환 -->
<script>
    function acyncMovePage(url){
        // ajax option
        var ajaxOption = {
                url : url,
                async : true,
                type : "POST",
                dataType : "html",
                cache : false
        };
        
        $.ajax(ajaxOption).done(function(data){
            // Contents 영역 삭제
            $('#bodyContents').children().remove();
            // Contents 영역 교체
            $('#bodyContents').html(data);
        });
    }
 
</script>


<script type="text/javascript">
	$('document').ready(function(){
		var now = new Date();
	    var month = (now.getMonth() + 1);               
	    var day = now.getDate();
	    if (month < 10) 
	        month = "0" + month;
	    if (day < 10) 
	        day = "0" + day;
	    var today = now.getFullYear() + '-' + month + '-' + day;
	    
	    
		$('#seatsel').on('click',function(){
			location.href='seatsel.jsp';
		})
		$('#logout').on('click',function(){
			location.href='logout.jsp';
		})
// 		$('#time_select').value(today);
		
		$("#myTable tr").click(function(){
			var tdArray = new Array();
			var td = $(this).children();
			
			td.each(function(i){
				tdArray.push(td.eq(i).text());
			});
			var number = tdArray[0];
			window.open("/selectedPayment?sales_number="+number, "결제 내역 상세보기", "width=600, height=500, left=500, top=50");
		});
	})
</script>


</head>
<body >
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
                        <a href="/index"><img src="/resources/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li class="active"><a href="./">홈</a></li>
                            <li><a href="./Product">상품</a></li>
                            <li><a href="#">페이지</a>
                                <ul class="header__menu__dropdown">
			                        <li><a href="./Stock">재고</a></li>
			                        <li><a href="./Sale">Sales</a></li>
                                </ul>
                            </li>
                            <li><a href="./shop-grid">샾그리드</a></li>
                            <li><a href="./shoping-cart">장바구니</a></li>
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
	<div class="jumbotron" id="gnb">	
		<div class="form-group">
			<label for="sales_number">주문번호:</label><input type="text" class="form-control"
				id="sales_number">
				<input type="button" value="검색" id="sn_search" class="btn btn-primary mr-2" /> 
		</div>
		<p>일일 판매실적/주간 판매실적/월 판매실적/물품별 판매실적(주간/일간/요일 비교)</p>
		<div id="btn-Title">
			<input type="date" min="2021-01-01" max="2025-12-31" id="time_select"/>
			
			<button type="button" id="time_select_btn">일일</button>
<%-- 			<button type="button"  onclick="acyncMovePage('popupTest.jsp')  /> --%>
			<button type="button" id="week_select_btn">주간</button>
			<button type="button" id="month_select_btn">월별</button>
			<button type="button" onclick="location.href='/' ">돌아가기</button>
		</div>
	</div>
	
	<div id="bodyContents" class="container mybgwh">
		<table id = "myTable" class="table table-dark table-hover">
			<thead>
				<tr>
					<td>주문번호</td>
					<td>회원</td>
					<td>결제금액</td>
					<td>결제방법</td>
					<td>결제일시</td>
				</tr>
			</thead>
			<tbody>
				
			<c:forEach items="${list}" var="salesList">
				<tr style="cursor:pointer;" value="${salesList.sales_number}"> 
						<td>${salesList.sales_number}</td> 
						<td>${salesList.cid}</td>
						<td>${salesList.totalPrice}</td>
						<td>${salesList.payment_method_type}</td>
						<td>${salesList.date}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>


















