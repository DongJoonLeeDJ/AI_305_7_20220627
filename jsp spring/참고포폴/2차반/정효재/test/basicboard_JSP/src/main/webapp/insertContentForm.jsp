<%@page import="user.UserDAO" %>
<%@page import="user.UserDTO" %>
<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="JSP_write.css">
<title>Insert title here</title>
<script>
function writeSave(){
	eval writeform = document.writeform;
	
	if(!writeform.name.value){
	  alert("작성자를 입력하십시요.");
	  writeform.writer.focus();
	  return false;
	}
	
	if(!writeform.title.value){
	  alert("제목을 입력하십시요.");
	  writeform.subject.focus();
	  return false;
	}
	
	if(!writeform.content.value){
	  alert("내용을 입력하십시요.");
	  writeform.content.focus();
	  return false;
	}
        
	if(!writeform.content_password.value){
	  alert(" 비밀번호를 입력하십시요.");
	  writeform.passwd.focus();
	  return false;
	}
 };
</script>
<%
	String id =null;
	String rank = null;
	id = (String)session.getAttribute("id");
	rank = (String)session.getAttribute("rank");
	if(id==null || id.equals("")){
    	response.sendRedirect("index.jsp");
    	}
%>
</head>
<body>
<% 
  int num = 0, ref = 1, post_step = 0, post_depth = 0;
  String strV = "";
  try{
    if(request.getParameter("num")!=null){
	   num=Integer.parseInt(request.getParameter("num"));
	   ref=Integer.parseInt(request.getParameter("ref"));
	   post_step=Integer.parseInt(request.getParameter("re_step"));
	   post_depth=Integer.parseInt(request.getParameter("post_depth"));
    }
%>
<p>글쓰기</p>
<form method="post" name="writeform" 
      action="insertContentC.jsp" onsubmit="return writeSave()">
<input type="hidden" name="num" value="<%=num%>">
<input type="hidden" name="ref" value="<%=ref%>">
<input type="hidden" name="post_step" value="<%=post_step%>">
<input type="hidden" name="post_depth" value="<%=post_depth%>">

<table>
   <tr>
    <td align="right" colspan="2" class="temp">
	    <a href="listForm.jsp"> 글목록</a> 
   </td>
   </tr>
   <tr>
    <td  width="70"  class="temp2" align="center" >제 목</td>
    <td  width="330" align="left">
    <%
      if(request.getParameter("num")==null) 
    	 strV = "";
      else
    	 strV = "[답변]";
    %>
    <input type="text" size="40" maxlength="50" name="title"
         value="<%=strV%>" style="ime-mode:active;"></td>	
  </tr>
     <%
   	if(id!=null || !id.equals("")){
		UserDAO userDAO = new UserDAO();
	    UserDTO userDTO = new UserDTO();
	    userDTO = userDAO.getUserInfo(id);
   %>
   <tr>
    <td  width="70"  class="temp2" align="center">이 름</td>
    <td  width="330" align="left">
       <input type="text" size="10" maxlength="10" 
          name="name" style="ime-mode:active;" value=<%=userDTO.getName()%> readonly/></td><!--active:한글-->
  </tr>
  <tr>
    <td  width="70"  class="temp2" align="center">전화번호</td>
    <td  width="330" align="left">
       <input type="text" size="40" maxlength="30" name="tel" value=<%=userDTO.getTel()%> readonly></td>
  </tr>
  <tr>
    <td  width="70"  class="temp2" align="center">Email</td>
    <td  width="330" align="left">
       <input type="text" size="40" maxlength="30" name="email"
           style="ime-mode:inactive;" value=<%=userDTO.getEmail()%> readonly></td><!--inactive:영문-->
  </tr>
  <%}else{ %>
   <tr>
    <td  width="70"  class="temp2" align="center">이 름</td>
    <td  width="330" align="left">
       <input type="text" size="10" maxlength="10" 
          name="name" style="ime-mode:active;"></td><!--active:한글-->
  </tr>
  <tr>
    <td  width="70"  class="temp2" align="center">전화번호</td>
    <td  width="330" align="left">
       <input type="text" size="40" maxlength="30" name="tel"></td>
  </tr>
  <tr>
    <td  width="70"  class="temp2" align="center">Email</td>
    <td  width="330" align="left">
       <input type="text" size="40" maxlength="30" name="email"
           style="ime-mode:inactive;" ></td><!--inactive:영문-->
  </tr>
  <%} %>
  <tr>
    <td  width="70"  class="temp2" align="center" >내 용</td>
    <td  width="330" align="left">
     <textarea name="content" rows="13" cols="40" 
              style="ime-mode:active;"></textarea> </td>
  </tr>
  <tr>
    <td  width="70"  class="temp2" align="center" >비밀번호</td>
    <td  width="330" align="left">
     <input type="password" size="20" maxlength="20" 
             name="content_password" style="ime-mode:inactive;"> 
	 </td>
  </tr>
  <tr>      
    <td colspan=2 class="temp2" align="center"> 
      <input type="submit" value="글쓰기" >  
      <input type="reset" value="다시작성">
      <input type="button" value="목록보기" OnClick="window.location='listForm.jsp'">
    </td>
  </tr>
</table>    
 <%
  }catch(Exception e){}
%>     
</form>    
</body>
</html>