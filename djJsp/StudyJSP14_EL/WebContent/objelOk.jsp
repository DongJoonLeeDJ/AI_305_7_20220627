<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%String id = request.getParameter("id"); 
String pw = request.getParameter("pw");%>
아이디 : <%=id %> <br>
비번 : <%=pw %><br>

아이디:${param.id }<br>
비번:${param.pw }<br>
아이디:${param["id"] }<br>
비번:${param["pw"] }<br>

<p style="color:blue">name을 지정하면 그 name의 value가 출력됨!!</p>
<p style="color:blue">request.getPara...보다 간결함</p>
어플리케이션:${applicationScope.apl_name}<br>
세션:${sessionScope.ss_name }
페이지컨텍스트:${pageScope.pct_name }
리퀘스트:${requestScope.rq_name }

</body>
</html>