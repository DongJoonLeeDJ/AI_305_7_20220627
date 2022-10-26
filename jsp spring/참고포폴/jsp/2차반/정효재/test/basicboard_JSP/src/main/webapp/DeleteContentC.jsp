<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="board.BoardDAO" %>
<%@ page import = "java.sql.Timestamp" %>

<% request.setCharacterEncoding("utf-8");%>

<%
  int num = Integer.parseInt(request.getParameter("num"));
  String pageNum = request.getParameter("pageNum");
  String passwd = request.getParameter("passwd");
  
  //System.out.println(passwd);
  BoardDAO dbPro = new BoardDAO(); 
  int check = dbPro.deleteArticle(num, passwd);

  if(check==1){
%>
	<script>
	alert("정상적으로 삭제되었습니다.");
	</script>
	<meta http-equiv="Refresh" content="0;url=listForm.jsp?pageNum=<%=pageNum%>">
<%}else{%>
    <script type="text/javascript">      
       <!--      
         alert("비밀번호가 맞지 않습니다");
         history.go(-1);
       -->
   </script>
<%} %>