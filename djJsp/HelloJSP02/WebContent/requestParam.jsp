<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mytest.myjava.Customer" %>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%! 
		String name, pw, major, protocol;
		String[] hobbys;
	%>
	
	<%! public String korHobby(String[] hobbys) {
		
			String hobby = "";
			for(int i = 0; i<hobbys.length; i++) {
				switch(hobbys[i]) {
				case "cook":
					hobby+="요리";
					break;
				case "run":
					hobby+="달리기";
					break;
				case "swim":
					hobby+="수영";
					break;
				case "sleep":
					hobby+="잠자기";
					break;
				}
				if(i!=hobbys.length-1)//마지막인덱스아닐때
					hobby+=",";
			}
			return hobby;
		
		}

	%>
	<%
		request.setCharacterEncoding("UTF-8");
		name=request.getParameter("name");
		pw=request.getParameter("pw");
		major=request.getParameter("major");
		protocol=request.getParameter("protocol");
		hobbys=request.getParameterValues("hobby"); //배열형태로 값 줌
	%>
	
	이름 : <%=name %><br>
	비번 : <%=pw %><br>
	전공 : <%=major %><br>
	규약 : <%=protocol %><br>
	취미 : <%=korHobby(hobbys) %>
</body>
</html>

















