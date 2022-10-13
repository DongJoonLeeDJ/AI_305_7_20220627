<%@ page import="java.io.PrintWriter"%>
<%@ page import= "reservation.Reservation"%>
<%@ page import= "reservation.ReservationDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>create reservation</title>
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8");
	Reservation reservation = new Reservation();
	
	String name = request.getParameter("reservation_name");
	String tel = request.getParameter("reservation_tel");
	int number = Integer.parseInt(request.getParameter("reservation_number"));
	String store_name = request.getParameter("title");
	String date = request.getParameter("reservation_date");
	
	reservation.getResverationInfo(name, tel, number, store_name, date);
	 
	if(name.equals("") || tel.equals("")|| store_name.equals("")|| date.equals(""))
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('다시 확인해주세요.')");
		script.println("history.back()");
		script.println("</script>");
		script.close();
	} else{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('예약완료!!')");
		script.println("location.href='../St_Join/main.jsp'");
		script.println("</script>");
		script.close();
	}
	%>
	
</body>
</html>