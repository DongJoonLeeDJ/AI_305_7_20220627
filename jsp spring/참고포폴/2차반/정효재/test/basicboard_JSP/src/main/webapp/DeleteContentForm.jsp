<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%
  int num = Integer.parseInt(request.getParameter("num"));
  String pageNum = request.getParameter("pageNum");

%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
<script type="text/javascript">  
 <!--    
  function deleteSave(){	
	if(!document.delForm.passwd.value){
	   alert("��й�ȣ�� �Է��Ͻʽÿ�.");
	   document.delForm.passwd.focus();
	   return false;
    }
  }    
-->
</script>
<style>
body{
background:rgba(0,0,0,0.8);}
table,tr,td{
border:1px solid white;}
</style>
</head>
<body>
<p style="color:white;">�ۻ���</p>
<br>
<form name="delForm" method="post"
   action="DeleteContentC.jsp?pageNum=<%=pageNum%>" 
   onsubmit="return deleteSave()"> 
 <table>
  <tr height="30">
     <td align=center  bgcolor="<%="#FFE271"%>">
       <b>��й�ȣ�� �Է��� �ּ���.</b></td>
  </tr>
  <tr height="30">
     <td align=center style="color:white;" >��й�ȣ :   
       <input type="password" name="passwd" size="8" maxlength="12">
	   <input type="hidden" name="num" value="<%=num%>"></td>
 </tr>
 <tr height="30">
    <td align=center bgcolor="<%="#FFE271"%>">
      <input type="submit" value="�ۻ���" >
      <input type="button" value="�۸��" 
       onclick="document.location.href='listForm.jsp?pageNum=<%=pageNum%>'">     
   </td>
 </tr>  
</table> 
</form>
</body>
</html>