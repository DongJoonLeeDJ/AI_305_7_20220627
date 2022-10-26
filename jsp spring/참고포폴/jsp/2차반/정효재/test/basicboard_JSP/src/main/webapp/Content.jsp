<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "board.BoardDAO" %>
<%@ page import = "board.BoardDTO" %>

<html>
<head>
<title>게시판</title>
<link href="style.css" rel="stylesheet" type="text/css">
<style>
body{
background:rgba(0,0,0,0.8);
}
table,tr,td{
border-collapse: collapse;
border:1px solid #FFF0B5;
}
.contents{
background-color:white;}
</style>
</head>
<body bgcolor="#FFF0B5">
<%
   int num = Integer.parseInt(request.getParameter("num"));
   String pageNum = request.getParameter("pageNum");

   try{
      BoardDAO dbPro = new BoardDAO(); 
      BoardDTO article =  dbPro.getArticle(num);
  
	  int ref=article.getRef();
	  int post_step=article.getPost_step();
	  int post_depth=article.getPost_depth();
%>

<p style="color:white">글내용 보기</p>

<form>
<table>  
  <tr height="30">
    <td align="center" width="125" bgcolor="#FFE271">글번호</td>
    <td align="center" width="125" align="center" class="contents">
	     <%=article.getNum()%></td>
    <td align="center" width="125" bgcolor="#FFE271">조회수</td>
    <td align="center" width="125" align="center" class="contents">
	     <%=article.getView_count()%></td>
  </tr>
  <tr height="30">
    <td align="center" width="125" bgcolor="#FFE271">작성자</td>
    <td align="center" width="125" align="center" class="contents">
	     <%=article.getName()%></td>
    <td align="center" width="125" bgcolor="#FFE271">작성일</td>
    <td align="center" width="125" align="center" class="contents">
	     <%= article.getUpdate_time()%></td>
  </tr>
  <tr height="30">
    <td align="center" width="125" bgcolor="#FFE271">글제목</td>
    <td align="center" width="375" align="center" colspan="3" class="contents">
	     <%=article.getTitle()%></td>
  </tr>
  <tr>
    <td align="center" width="125" bgcolor="#FFE271">글내용</td>
    <td align="left" width="375" colspan="3" class="contents">
           <pre><%=article.getContent()%></pre></td>
  </tr>
  <tr height="30">      
    <td colspan="4" bgcolor="#FFE271" align="right" > 
	  <input type="button" value="글수정" 
       onclick="document.location.href='UpdateContentForm.jsp?num=<%=article.getNum()%>&pageNum=<%=pageNum%>'">
	   &nbsp;&nbsp;&nbsp;&nbsp;
	  <input type="button" value="글삭제" 
       onclick="document.location.href='DeleteContentForm.jsp?num=<%=article.getNum()%>&pageNum=<%=pageNum%>'">
	   &nbsp;&nbsp;&nbsp;&nbsp;
      <!--
      <input type="button" value="답글쓰기" 
       onclick="document.location.href='insertContentForm.jsp?num=<%=num%>&ref=<%=ref%>&post_step=<%=post_step%>&post_depth=<%=post_depth%>'">
	   &nbsp;&nbsp;&nbsp;&nbsp;
	    -->
       <input type="button" value="글목록" 
       onclick="document.location.href='listForm.jsp?pageNum=<%=pageNum%>'">
    </td>
  </tr>
</table>    
<%
 }catch(Exception e){} 
 %>
</form>      
</body>
</html>