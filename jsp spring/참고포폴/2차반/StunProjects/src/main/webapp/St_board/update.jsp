<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="bbs.BbsDAO"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Warm Place_맛집후기_업데이트</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
</head>
<body>
	<%
	// 현재 세션 상태를 체크한다
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	%>
	
       <%--  <!-- Responsive navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container px-5">
                <a class="navbar-brand" href="../St_Join/main.jsp">Warm Place</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                 <div class="collapse navbar-collapse" id="navbarSupportedContent">
                 <%
					// 로그인 하지 않았을 때 보여지는 화면
					if(userID == null){
				%>
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="../St_board/login.jsp">로그인</a></li>
                        <li class="nav-item"><a class="nav-link" href="../St_Join/st_userJoin.jsp">회원가입</a></li>
                        <li class="nav-item"><a class="nav-link" href="../St_Reservation/map.jsp">예약하기</a></li>
                        <li class="nav-item"><a class="nav-link" href="../St_board/bbs.jsp">맛집후기</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">마이페이지</a></li>
                    </ul>
				<%
				// 로그인이 되어 있는 상태에서 보여주는 화면
					}else{
				%>
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="../St_board/logoutAction.jsp">로그아웃</a></li>
                        <li class="nav-item"><a class="nav-link" href="../St_Join/st_userJoin.jsp">회원가입</a></li>
                        <li class="nav-item"><a class="nav-link" href="../St_Reservation/map.jsp">예약하기</a></li>
                        <li class="nav-item"><a class="nav-link" href="../St_board/bbs.jsp">맛집후기</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">마이페이지</a></li>
                    </ul>
                    <%
				}
			%>
                </div>
            </div>
        </nav> --%>
        
        <%
	if (userID == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인을 하세요')");
		script.println("location.href='login.jsp'");
		script.println("</script>");
	}
	int bbsID = 0;
	if (request.getParameter("bbsID") != null) {
		bbsID = Integer.parseInt(request.getParameter("bbsID"));
	}
	if (bbsID == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글입니다')");
		script.println("location.href='bbs.jsp'");
		script.println("</script>");
	}
	//해당 'bbsID'에 대한 게시글을 가져온 다음 세션을 통하여 작성자 본인이 맞는지 체크한다
	Bbs bbs = new BbsDAO().getBbs(bbsID);
	if (!userID.equals(bbs.getUserID())) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('권한이 없습니다')");
		script.println("location.href='bbs.jsp'");
		script.println("</script>");
	}
	%>
	

	<!-- 게시판 글 수정 양식 영역 시작 -->
	<div class="container">
		<div class="row">
			<form method="post" action="updateAction.jsp?bbsID=<%=bbsID%>">
				<table class="table table-striped"
					style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2"
								style="background-color: #eeeeee; text-align: center;">게시판
								글 수정 양식</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control"
								placeholder="글 제목" name="bbsTitle" maxlength="50"
								value="<%=bbs.getBbsTitle()%>"></td>
						</tr>
						<tr>
							<td><textarea class="form-control" placeholder="글 내용"
									name="bbsContent" maxlength="2048" style="height: 350px;"><%=bbs.getBbsContent()%></textarea></td>
						</tr>
					</tbody>
				</table>
				<!-- 글쓰기 버튼 생성 -->
				<input type="submit" class="btn btn-primary pull-right"
					value="수정하기 ">
			</form>
		</div>
	</div>
	<!-- 게시판 글 수정 양식 영역 끝 -->

	<!-- 부트스트랩 참조 영역 -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>