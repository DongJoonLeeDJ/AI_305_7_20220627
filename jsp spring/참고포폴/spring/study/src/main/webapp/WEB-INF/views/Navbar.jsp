<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div style="position:relative; left:380px; top:-10px;">
	<c:if test="${member == null}">
		<a class="btn" href="/login_page" style="background-color: #008080; color: white; width: 95px;">로그인</a>
		<a class="btn" href="/member/memberRegister" style="background-color: #008080; color: white; width: 95px; margin-left: 10px;">회원가입</a>
	</c:if>
	<c:if test="${member != null }">
		<a class="btn" href="/member/logout" role="button" style="background-color: #008080; color: white; width: 95px;">로그아웃</a>
		<a class="btn" href="/member/memberUpdateView" style="background-color: #008080; color: white; width: 130px; margin-left: 10px;">회원정보수정</a>
	</c:if>
</div>