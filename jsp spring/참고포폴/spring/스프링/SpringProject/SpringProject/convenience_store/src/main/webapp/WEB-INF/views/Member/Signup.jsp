<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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

    <!-- 승직 ./ 이거 해야 됨 Css Styles -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="../resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/style.css" type="text/css">
</head>

<body>
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
                                <img src="../resources/img/language.png" alt="">
                                <div>English</div>
                                <span class="arrow_carrot-down"></span>
                                <ul>
                                    <li><a href="#">Spanis</a></li>
                                    <li><a href="#">English</a></li>
                                </ul>
                            </div>
                            <div class="header__top__right__auth">
                                <a href="Member/login"><i class="fa fa-user"></i> Login</a>
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
                        <a href="/home"><img src="../resources/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li class="active"><a href="/home">홈</a></li>
                            <li><a href="/Product">상품</a></li>
                            <li><a href="#">페이지</a>
                                <ul class="header__menu__dropdown">
			                        <li><a href="/Stock">재고</a></li>
			                        <li><a href="/Sale">Sale</a></li>
			                        <li><a href="/selectedPayment">selectedPayment</a></li>
			                        <li><a href="/selectedPaymentMonth">selectedPaymentMonth</a></li>
                                </ul>
                            </li>
                            <li><a href="/shop-grid">샵그리드</a></li>
                            <li><a href="/shoping-cart">장바구니</a></li>
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
        </div>
    </header>
    
    <!-- Header Section End -->
    <!-- Hero Section Begin -->

<form  onsubmit="return submitCheck();" class="col-5 container" action="/signupaction" method="post" id="sign">
	<div class="main mt-5 mb-4">
		<h2>회원가입</h2>
	</div>
		<div>
			<label class="mb-sm-2" for="id" style="height:30px; vertical-align:middle;">아이디</label>
			<input class="col-8 mb-sm-2" type="text" name="id" id="id" class="form-control" placeholder="중복 확인 필수" />
			<button type='button' class="btn btn-outline-info btn-sm" onclick='idcheck();'>중복검사</button>
		</div>
		<div>
			<label class="mb-sm-2" for="pw" style="height:30px; vertical-align:middle;">비밀번호</label>
			<input class="col-8 mb-sm-2" type="password" name="pw" id="pw" onkeyup="passwardCheck();" class="form-control"/>
		</div>
		<div>
			<label class="mb-sm-2" for="pw_ck" style="height:30px; vertical-align:middle;">비밀번호 확인</label>
			<input class="col-8 mb-sm-2" type="password" name="pw_ck" onkeyup="passwardCheck();" id="pw_ck" class="form-control" placeholder="위와 동일한 비밀번호 입력" />
			<div style="color: red" id="pwMessage" size="1.5" class="mb-sm-2"></div>
		</div>
		<div>	
			<label class="mb-sm-2" for="name" style="height:30px; vertical-align:middle;">이름</label>
			<input class="col-8 mb-sm-2" type="text" name="name" id="name" class="form-control"/>
		</div>
		<div>
			<label class="mb-sm-2" for="addr" style="height:30px; vertical-align:middle;">주소</label>
			<input class="col-8 mb-sm-2" type="text" name="addr" id="addr" class="form-control"/>
		</div>
		<div>
			<label class="mb-sm-2" for="email" style="height:30px; vertical-align:middle;">이메일</label>
			<input class="col-8 mb-sm-2" type="text" name="email" id="email" class="form-control" placeholder="OOOO@OOOOOO.OOO" />
		</div>
	<div class="last my-3">
		<input id="signup" type="submit" value="완료" class="btn btn-info mt-4 btn-lg" />
	</div>
</form>
   <!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="../index.jsp"><img src="../resources/img/logo.png" alt=""></a>
                        </div>
                        <ul>
                            <li>Address: 60-49 Road 11378 New York</li>
                            <li>Phone: +65 11.188.888</li>
                            <li>Email: hello@colorlib.com</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                    <div class="footer__widget">
                        <h6>Useful Links</h6>
                        <ul>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">About Our Shop</a></li>
                            <li><a href="#">Secure Shopping</a></li>
                            <li><a href="#">Delivery infomation</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Our Sitemap</a></li>
                        </ul>
                        <ul>
                            <li><a href="#">Who We Are</a></li>
                            <li><a href="#">Our Services</a></li>
                            <li><a href="#">Projects</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Innovation</a></li>
                            <li><a href="#">Testimonials</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="footer__widget">
                        <h6>Join Our Newsletter Now</h6>
                        <p>Get E-mail updates about our latest shop and special offers.</p>
                        <form action="#">
                            <input type="text" placeholder="Enter your mail">
                            <button type="submit" class="site-btn">Subscribe</button>
                        </form>
                        <div class="footer__widget__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer__copyright">
                        <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                        <div class="footer__copyright__payment"><img src="../resources/img/payment-item.png" alt=""></div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

<!--     Js Plugins
    <script src="./resources/js/jquery-3.3.1.min.js"></script>
    <script src="./resources/js/bootstrap.min.js"></script>
    <script src="./resources/js/jquery.nice-select.min.js"></script>
    <script src="./resources/js/jquery-ui.min.js"></script>
    <script src="./resources/js/jquery.slicknav.js"></script>
    <script src="./resources/js/mixitup.min.js"></script>
    <script src="./resources/js/owl.carousel.min.js"></script>
    <script src="./resources/js/main.js"></script> -->
    
        <!-- Js Plugins -->
    <script src="../resources/js/jquery-3.3.1.min.js"></script>
    <script src="../resources/js/bootstrap.min.js"></script>
    <script src="../resources/js/jquery.nice-select.min.js"></script>
    <script src="../resources/js/jquery-ui.min.js"></script>
    <script src="../resources/js/jquery.slicknav.js"></script>
    <script src="../resources/js/mixitup.min.js"></script>
    <script src="../resources/js/owl.carousel.min.js"></script>
    <script src="../resources/js/main.js"></script>
	<script>
var id_check = false;
var pw_check = false;
var checked_id = null;
//비밀번호 유효성 검사
function passwardCheck(){
	var pw1 = $('#pw').val();
	var pw2 = $('#pw_ck').val();
	if(pw1 != pw2){
		$('#pwMessage').html('비밀번호가 일치 하지 않습니다.');
		pw_check = false;
	}
	else{
		$('#pwMessage').html('');
		pw_check = true;
	}
}
// 아이디 유효성 검사
function idcheck(){
	var id = $('#id').val();
    // 아무것도 입력 안했을떄
    if( id == '' || id == null ){
        alert( 'ID를 입력해주세요' );
        return false;
    }
    //공백만 입력한경우
    var blank_pattern = /^\s+|\s+$/g;
    if( id.replace( blank_pattern, '' ) == "" ){
        alert(' 공백은 사용할 수 없습니다. ');
        return false;
    }
	//한글 사용 체크
    var blank_pattern = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g;
    if( blank_pattern.test( id) == true){
        alert(' 한글은 사용할 수 없습니다. ');
        return false;
    }
    //공백 금지
    var blank_pattern = /[\s]/g;
    if( blank_pattern.test( id) == true){
        alert(' 공백은 사용할 수 없습니다. ');
        return false;
    }
	//특수문자 사용 체크
    var special_pattern = /[`~!@#$%^&*|\\\'\";:\/?]/gi;
    if( special_pattern.test(id) == true ){
        alert('특수문자는 사용할 수 없습니다.');
        return false;
    }
    // ajax로 아이디 중복검사
    $.ajax({
        type:'GET',
        url:'/idCheck ',
        dataType:'text',
        data:{id : id},
        success: function(result) {
        	console.log(result)
            if(result == 0) {
               alert('사용 가능한 ID 입니다')
               alert(id);
            } else if(result == 1) {
               alert('이미 사용중인 ID 입니다.')
            }
        }
    })    //ajax
}
//입력된거 확인
/* function submitCheck() {
	var userid = $('#userid').val();
	if(userid != checked_id){
		alert("아이디 중복검사를 해주세요");
		return false;
	}
	if(!id_check){
		alert("아이디 중복검사를 해주세요")
		return false;
	}
   if(!pw_check){
	   alert("비밀번호가 일치하지 않습니다");
	   return false;
   }
   var uname = $('#uname').val();
   if( uname == '' || uname == null ){
	   alert( '이름을 입력해 주세요' );
       return false;
   }
   var uaddr = $('#uaddr').val();
   if( uaddr == '' || uaddr == null ){
	   alert( '주소를 입력해 주세요' );
       return false;
   }
   //이메일 유효성 검사
   var umail = $('#umail').val();
   var reg_email = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
   if(!reg_email.test(umail)) {                            
	   alert("이메일 형식에 맞지 않습니다.")
	   return false;
   }
   
   return true;
} */
</script>
	


</body>

</html>