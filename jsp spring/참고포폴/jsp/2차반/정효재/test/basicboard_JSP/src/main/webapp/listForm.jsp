<%@page import="board.BoardDAO" %>
<%@page import="board.BoardDTO" %>
<%@page import="java.util.List" %>
<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!int pageSize = 10;%>
<%
	String id =null;
	String rank = null;
	id = (String)session.getAttribute("id");
	rank = (String)session.getAttribute("rank");
	if(id==null || id.equals("")){
    	response.sendRedirect("index.jsp");
    	}
%>
<%
String pageNum = request.getParameter("pageNum");

    if (pageNum == null) {
        pageNum = "1";
    }

    int currentPage = Integer.parseInt(pageNum);
    int startRow = (currentPage - 1) * pageSize + 1;
    int endRow = currentPage * pageSize;
    int count = 0;
    int number = 0;
    List<BoardDTO> ContentList = null; 
    
    BoardDAO boardDAO = new BoardDAO();
    count = boardDAO.getArticleCount();

    if (count > 0) {
    	ContentList = boardDAO.getArticles(startRow, pageSize);
    }
    
	number = count-(currentPage-1)*pageSize;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
<style>
a:visited{
color:white;
}
a{
text-decoration:none;
color:white;
}
table{
border:1px solid white;
border-collapse: collapse;
}
tr,td{
border:1px solid white;
text-align:center;
}
.temp3{
color:purple;
font-weight:1000;}
</style>
</head>
<body style="background-color:rgba(0,0,0,0.8);color:white;">
<p>글목록(전체 글:<%=count%>)</p>
<table >
  <tr>
    <td align="right">
       <a href="insertContentForm.jsp"; style="color:white;">글쓰기</a>
    </td>
  </tr>
</table>

<%
if (count == 0) {
%>

<table>
<tr>
    <td align="center">
              게시판에 저장된 글이 없습니다.
    </td>
</table>

<%
} else {
%>
<table> 
    <tr height="30" bgcolor="#FFE271"> 
      <td align="center"  width="50" class="temp3" >번 호</td> 
      <td align="center"  width="250" class="temp3">제   목</td> 
      <td align="center"  width="100" class="temp3">작성자</td>
      <td align="center"  width="150" class="temp3">작성일</td> 
      <td align="center"  width="50" class="temp3">조 회</td> 
      <td align="center"  width="100" class="temp3">IP</td>    
    </tr>
<%
for (int i = 0 ; i < ContentList.size() ; i++) {
       BoardDTO article = ContentList.get(i);
%>
   <tr height="30">
    <td  width="50" > <%=number--%></td>
    <td  width="250" align="left">
<%
	int wid=0; 
	if(article.getPost_depth()>0){
	   wid=5*(article.getPost_depth());
%>
	  <img src="images/level.png" width="<%=wid%>" height="16">
	  <img src="images/re.png">
<%  }else{%>
	  <img src="images/level.png" width="<%=wid%>" height="16">
<%  }%>
           
      <a href="Content.jsp?num=<%=article.getNum()%>&pageNum=<%=currentPage%>">
           <%=article.getTitle()%></a> 
<% if(article.getView_count()>=20){%>
         <img src="images/hot.gif" border="0"  height="16"><%}%> </td>
    <td width="100" align="left"> 
       <a href="mailto:<%=article.getEmail()%>">
                     <%=article.getName()%></a></td>
    <td width="150"><%= article.getUpdate_time() %></td>
    <td width="50"><%=article.getView_count() %></td>
    <td width="100" ><%=article.getIpAddress() %></td>
  </tr>
<%}%>
</table>
<%}%>

<%
    if (count > 0) {
        int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
		int startPage =1;
		
		if(currentPage % 10 != 0)
           startPage = (int)(currentPage/10)*10 + 1;
		else
           startPage = ((int)(currentPage/10)-1)*10 + 1;

		int pageBlock = 10;
        int endPage = startPage + pageBlock - 1;
        if (endPage > pageCount) endPage = pageCount;
        
        if (startPage > 10) { %>
          <a href="listForm.jsp?pageNum=<%= startPage - 10 %>">[이전]</a>
<%      }
        
        for (int i = startPage ; i <= endPage ; i++) {  %>
           <a href="listForm.jsp?pageNum=<%= i %>">[<%= i %>]</a>
<%      }
        
        if (endPage < pageCount) {  %>
        <a href="listForm.jsp?pageNum=<%= startPage + 10 %>">[다음]</a>
<%
        }
    }
%>

</body>
</html>