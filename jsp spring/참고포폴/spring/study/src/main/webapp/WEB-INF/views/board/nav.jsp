<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style type="text/css">
.box-a {
	margin-right:980px;
	display: grid;
	gap:20px;
	grid-template-columns:40px 60px;
}
a {
	text-decoration-line: none;
}
</style>
<div class="box-a">
	<a href="/board/list">목록</a>
	<a href="/board/writeView">글 작성</a>
</div>