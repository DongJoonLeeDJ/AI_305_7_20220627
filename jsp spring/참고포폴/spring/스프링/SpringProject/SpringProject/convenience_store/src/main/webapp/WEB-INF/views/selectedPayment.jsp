<%@page import="com.store.gdgd.sale.Sales2"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 
<!DOCTYPE html>
<html lang="kr">
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
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/style.css" type="text/css">
</head>
<body>
    <!-- Hero Section Begin -->
    <section class="hero">
        <div class="container">
            <div class="row">
                <div class="col-lg-9">
                    <div class="hero mybgwh">
						<table id="myTable" class="table table-dark table-hover">
							<thead>
								<tr>
									<td>상품명</td>
									<td>가격</td>
									<td>수량</td>
									<td>총 금액</td>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list}" var="salesList">
									<tr style="cursor:pointer;" value="${salesList.pd_name}"> 
										<td>${salesList.pd_name}</td> 
										<td>${salesList.pd_price}</td>
										<td>${salesList.quantity}</td>
										<td>${salesList.totalPrice}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->
 
</body>
</html>