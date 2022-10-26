<%@ page import ="board.BoardDAO" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>
<%@page import="java.util.Calendar" %>

<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%
request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="content" scope="page" class="board.BoardDTO">
	<jsp:setProperty name="content" property="*"/>
</jsp:useBean>
<%
Calendar cal = Calendar.getInstance();
	String rank = null;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String reg_date = sdf.format(cal.getTime());
    content.setUpdate_time(reg_date);
	content.setIpAddress(request.getRemoteAddr());
	rank = (String)session.getAttribute("rank");
	content.setRank(rank);
    BoardDAO dbPro = new BoardDAO();
    dbPro.insertArticle(content); 

    response.sendRedirect("listForm.jsp");
%>