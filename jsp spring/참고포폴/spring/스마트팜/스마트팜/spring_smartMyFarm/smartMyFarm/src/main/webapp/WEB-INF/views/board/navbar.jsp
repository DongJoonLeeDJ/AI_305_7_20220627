<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<nav class="navbar navbar-expand-sm bg-light navbar-light">
  			<ul class="navbar-nav">
  				<li class="nav-item">
      				<a class="nav-link" href='<c:url value="/"/>'>HOME</a>
    			</li>
    			<li class="nav-item active">
      				<a class="nav-link" href='<c:url value="/board/list"/>'>My Farm Stroy</a>
    			</li>
    			<li class="nav-item">
      				<a class="nav-link" href='<c:url value="/tomato/list"/>'>생장일지</a>
    			</li>
    			<li class="nav-item dropdown">
      				<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">회원관리</a>
      				<div class="dropdown-menu">
        				<c:if test="${member == null}"><a class="dropdown-item" href="<c:url value='../Member/loginView'/>">로그인</a></c:if>
        				<c:if test="${member != null}"><a class="dropdown-item" href="/Member/logout">로그아웃</a></c:if>
        				<a class="dropdown-item" href="<c:url value='../Member/signup'/>"> 회원가입</a>
      				</div>
    			</li>
    			<li style="float: right;">
    				<c:if test="${member!=null}"><p style="float: right;">${member.id}님 안녕하세요 :)</p></c:if>
    			</li>
    		</ul>
    	</nav>