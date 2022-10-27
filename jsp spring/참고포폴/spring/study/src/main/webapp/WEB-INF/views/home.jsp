<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <link rel="stylesheet" href="../resources/css/style.css">
    <title>My Website</title>
</head>

<body>
    <!-- Header -->
    <section id="header">
        <div class="header container">
            <div class="nav-bar">
                <div class="brand">
                    <a href="#main"><h1><span>S</span>eung <span>H</span>un</h1></a>
                </div>
                <div class="nav-list">
                    <div class="hamburger"><div class="bar"></div></div>
                    <ul>
                        <li><a href="/" data-after="Home">Home</a></li>
                        <li><a href="#skills" data-after="skills">skill</a></li>
                        <li><a href="#projects" data-after="Project">Projects</a></li>
                        <li><a href="#about" data-after="About">About</a></li>
                        <li><a href="#contact" data-after="Contact">Contact</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- End Header -->
    <!-- start main section -->
    <section id="main" style="background-image:url(../resources/img/사진/배경용.jpg)">
        <div class="main container">
            <div>
                <h1>Hello,<span></span></h1>
                <h1>My Name is<span></span></h1>
                <h1>승훈<span></span></h1>
                <a href="#projects" type="button" class="cta">Portfolio</a>
            </div>
        </div>
    </section>
    <!-- end main section -->

    <!-- start skill section -->
    <section id="skills">
        <div class="skills container">
            <div class="skill-top">
                <h1 class="section-title">Sk<span>i</span>ll</h1>
                <p>Java, Python, C#, Spring을 공부하며 여러 개발환경에서 프로그램을 만들고 실행해보며 익혀왔습니다.</p>
            </div>
            <div class="skill-bottom">
                <div class="skill-item">
                    <div class="icon"><img src="./resources/img/icon/자바-로고-90.png" />
                    </div>
                    <h2>Java</h2>
                    <p>객체지향언어의 기본을 익히는 언어로서 자바를 배웠습니다. 처음엔 간단하게 C언어를 배우면서 알게된 포인터개념과 비슷한줄 알았으나
                    배우면서 완전 다른 개념이어 당황했던 기억이 있다. 지금은 객체 선언 생성을 통해 객체를 다룰 수 있게되었고 간단한 프로그램을 만들 수
                    있는 수준은 온것같다.</p>
                </div>
                <div class="skill-item">
                    <div class="icon"><img src="./resources/img/icon/파이썬-로고-96.png" />
                    </div>
                    <h2>Python</h2>
                    <p>처음 배울땐 가장 맘에 들고 쉬웠던 언어이다. C언어를 배우고 Java를 조금 배웠던 단계에서 배운 언어라 변수의 선언과 간단한 사칙연산을
                    수행하며 간단한 코드들을 보며 신세계의 경험을 했던 기억이 있다. 지금에 와선 머신러닝과 딥러닝의 고수준의 단계로 오면서 파이썬이란
                    언어에대해 다시 생각하게 되었다.</p>
                </div>
                <div class="skill-item">
                    <div class="icon"><img src="./resources/img/icon/csharp-로고-96.png" />
                    </div>
                    <h2>C#</h2>
                    <p>객체를 선언하는 등의 java와 유사한 점도 있어큰 어려움은 없었다. winform이라는 기능을 사용해 이용자가 바로 사용 할 수있는 UI를 
                    구성해서 프로그램을 만들어 보았고 시각적인 사용환경이 배움에 있어서 재미도 있었다. 데이터를 연결하는 과정에서 배웠던 oracle db를 활용
                    한 sql문 작성등을 연습해보고 활용할 수도 있었다.</p>
                </div>
                <div class="skill-item">
                    <div class="icon"><img src="./resources/img/icon/spring-로고-96.png" />
                    </div>
                    <h2>Spring</h2>
                    <p>웹어플리케이션 제작을 위해 Spring 개발도구를 사용하여 라이브러리를 관리하고 Java기반의 서블릿과 jsp를 사용해 웹상에 나타 낼수있는
                    뷰단을 제작해 웹제작을 할 수 있을 정도의 능력을 개발하였다. 스프링으로 웹 개발에서 사용자 데이터의 저장과 관리를 위해 oracle DB, 
                    mysql, mariaDB(10.1)버전을 사용해 보았다.</p>
                </div>
            </div>
        </div>
    </section>
    <!-- end skill section -->

    <!-- start project setion -->
    <section id="projects">
        <div class="projects container">
            <div class="projects-header">
                <h1 class="section-title">Recent <span>Projects</span></h1>
            </div>
            <div class="all-projects">
                <div class="project-item">
                    <div class="project-info">
                        <h1>PROJECT ①</h1>
                        <h2>python을 활용한 프로젝트 입니다. pyqt를 이용해서 ui를 꾸미고 내부기능으로 쿠팡 검색기능과 메일자동전송을 이용하여
                        사용자가 원하는 물품에 가격을 설정하고 검색하면 제품이 검색되고 검색되어진 물품정보를 사용자가 등록한 이메일로 전송하여 보여주는
                        프로그램입니다.</h2>
                        <div class="project-info-footer">&lt;이미지를 누르면 상세페이지로 이동합니다&gt;</div>
                    </div>
                    <div class="project-img">
                        <a href="/project/python"><img src="./resources/img/python_ppt.png" alt="img"></a>
                    </div>
                </div>
                <div class="project-item">
                    <div class="project-info">
                        <h1>PROJECT ②</h1>
                        <h2>spring을 활용한 프로젝트 입니다. 간단한 로그인 기능과 로그인을 통한 게시판 글쓰기 등을 구현해 보았습니다. 데이터를 저장 할 
                        수 있는 mysql을 사용해 사용자 아이디 비밀번호를 등록하면 데이터에 저장되고 로그인하여 글쓰기를 사용하면 사용자가 쓴 글이 게시판에 등록
                        되고 업데이트 삭제까지 해볼 수 있게 만든 페이지 구현 프로그램 입니다.</h2>
                        <div class="project-info-footer">&lt;이미지를 누르면 상세페이지로 이동합니다&gt;</div>
                    </div>
                    <div class="project-img">
                        <a href="/project/spring"><img src="./resources/img/spring_ppt.png" alt="img"></a>
                    </div>
                </div>
                <div class="project-item">
                    <div class="project-info">
                        <h1>PROJECT ③</h1>
                        <h2>C#을 활용한 프로젝트 입니다. winform의 기능들을 활용해 간단한 주차관리 프로그램과 식당주문 프로그램을 합쳐 만들어 보았습니다.
                         데이터를 저장하기위해 oracle DB를 사용하였고 기본적인 crud기능을 사용할 수있도록 만들었습니다. 이를통해 테이블 주문관리와 주차장 
                         입출차를 관리 할 수 있도록 만들고 최종적으로 정산을 기능을 넣어두었습니다.</h2>
                    	<div class="project-info-footer">&lt;이미지를 누르면 상세페이지로 이동합니다&gt;</div>
                    </div>
                    <div class="project-img">
                        <img src="./resources/img/Csharp_ppt.png" alt="img">
                    </div>
                </div>
                <div class="project-item">
                    <div class="project-info">
                        <h1>PROJECT ④</h1>
                        <h2>머신러닝 딥러닝 프로젝느가 들어갈 자리입니다.아직 제작 단계에 있는 프로젝트이고, 빠른 시일내에 업데이트 해보겠습니다.
                            eos quia soluta dicta labore suscipit deleniti itaque dignissimos, illo aliquid quaerat
                            aspernatur nobis quam fugit vero provident quisquam. Nobis natus aliquam vel sed non odit
                            commodi!</h2>
                        <div class="project-info-footer"><h2>&lt;이미지를 누르면 상세페이지로 이동합니다&gt;</h2></div>
                    </div>
                    <div class="project-img">
                        <a href="/제작중"><img src="../resources/img/404에러용.png" alt="img"></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end project setion -->

    <!-- start about section -->
    <section id="about">
        <div class="about container">
            <div class="col-left">
                <div class="about-img">
                    <img src="../resources/img/사진/about사진대용.jpg" alt="img">
                </div>
            </div>
            <div class="col-right">
                <h1 class="section-title">About <span>Me</span></h1>
                <h2>Developer</h2>
                <p><span><i>Everything in your world is created by what you think.</i></span></p>
                <p>오프라 윈프리가 했던 명언입니다. 지금은 부족하지만 긍정적이며 더 옳고 좋은 방향으로 생각하며 다음과 미래가 기대
                되는 개발자가 되겠습니다.</P>
                <a href="#" class="cta">Download Resume</a>
            </div>
        </div>
    </section>
    <!-- end about section -->

    <!-- start contact section -->
    <section id="contact">
        <div class="contact container">
            <div><h1 class="section-title">Contact <span>info</span></h1></div>
            <div class="contact-items">
                <div class="contact-item">
                    <div class="icon"><img src="../resources/img/icon/icons8-phone-100.png"></div>
                    <div class="contact-info">
                        <h1>Phone</h1>
                        <h2>010-3926-1685</h2>
                    </div>
                </div>
                <div class="contact-item">
                    <div class="icon"><img src="../resources/img/icon/icons8-email-100.png"/></div>
                    <div class="contact-info">
                        <h1>Email</h1>
                        <h2>mysky0420@naver.com</h2>
                    </div>
                </div>
                <div class="contact-item">
                    <div class="icon"><img src="../resources/img/icon/icons8-address-100.png"/></div>
                    <div class="contact-info">
                        <h1>Address</h1>
                        <h2>대구광역시 남구 대명동</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end contact section -->
    
    <!-- start footer section -->
    <section id="footer">
        <div class="footer container">
            <div class="brand"><h1><span>S</span>eung <span>H</span>un</h1></div>
            <h2>Your Complete Web Solution</h2>
            <div class="social-icon">
                <div class="social-item">
                    <a href="#"><img src="../resources/img/icon/icons8-github-squared-100.png"/></a>
                </div>
                <div class="social-item">
                    <a href="#"><img src="../resources/img/icon/icons8-facebook-new-100.png"/></a>
                </div>
                <div class="social-item">
                    <a href="#"><img src="../resources/img/icon/icons8-insta-old-100.png"/></a>
                </div>
                <div class="social-item">
                    <a href="#"><img src="../resources/img/icon/icons8-twitter-100.png"/></a>
                </div>
            </div>
            <p>Copyright ⓒ 2022 Lsh. All right reserved</p>
        </div>
    </section>
    <!-- end Footer section -->
    <script src="../resources/js/app.js"></script>
</body>
</html>