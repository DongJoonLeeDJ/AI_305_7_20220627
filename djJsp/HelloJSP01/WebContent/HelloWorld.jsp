<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%out.println("<h1>Hello</h1>"); 
System.out.println("�̵��� �޷�"); %>
<script type="text/javascript">
	let h1tag = document.createElement("h1")
	h1tag.textContent = "�ȳ�"
	document.body.appendChild(h1tag)
</script>
</body>
</html>




