<%@page import="board.BoardDAO" %>
<%@page import="board.BoardDTO" %>
<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>게시판</title>
</head>
<body bgcolor="#FFF0B5">
<%
  int num = Integer.parseInt(request.getParameter("num"));
  String pageNum = request.getParameter("pageNum");
  try{
      BoardDAO dbPro = new BoardDAO(); 
      BoardDTO article = dbPro.updateGetArticle(num);

%>

<p>글수정</p>
<br>
<form method="post" name="writeform" 
action="UpdateContentC.jsp?pageNum=<%=pageNum%>" onsubmit="return writeSave()">
<table>
  <tr>
    <td  width="70"  bgcolor="#FFE271" align="center">이 름</td>
    <td align="left" width="330">
       <input type="text" size="10" maxlength="10" name="name" 
         value="<%=article.getName()%>" style="ime-mode:active;">
	   <input type="hidden" name="num" value="<%=article.getNum()%>"></td>
  </tr>
  <tr>
    <td  width="70"  bgcolor="#FFE271" align="center" >제 목</td>
    <td align="left" width="330">
       <input type="text" size="40" maxlength="50" name="title"
        value="<%=article.getTitle()%>" style="ime-mode:active;"></td>
  </tr>
  <tr>
    <td  width="70"  bgcolor="#FFE271" align="center">Tel</td>
    <td align="left" width="330">
       <input type="text" size="40" maxlength="30" name="email" 
        value="<%=article.getTel()%>"></td>
  </tr>
  <tr>
    <td  width="70"  bgcolor="#FFE271" align="center">Email</td>
    <td align="left" width="330">
       <input type="text" size="40" maxlength="30" name="email" 
        value="<%=article.getEmail()%>" style="ime-mode:inactive;"></td>
  </tr>
  <tr>
    <td  width="70"  bgcolor="#FFE271" align="center" >내 용</td>
    <td align="left" width="330">
     <textarea name="content" rows="13" cols="40" 
       style="ime-mode:active;"><%=article.getContent()%></textarea></td>
  </tr>
  <tr>
    <td  width="70"  bgcolor="#FFE271" align="center" >비밀번호</td>
    <td align="left" width="330" >
     <input type="password" size="8" maxlength="12" 
               name="content_password" style="ime-mode:inactive;">
     
	 </td>
  </tr>
  <tr>      
   <td colspan=2 bgcolor="#FFE271" align="center"> 
     <input type="submit" value="글수정" >  
     <input type="reset" value="다시작성">
     <input type="button" value="목록보기" 
       onclick="document.location.href='listForm.jsp?pageNum=<%=pageNum%>'">
   </td>
 </tr>
 </table>
</form>
<%
}catch(Exception e){}%>      
      
</body>
</html>