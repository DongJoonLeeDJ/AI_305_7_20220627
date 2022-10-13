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
        <title>Warm Place_맛집후기_뷰</title>
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
	
        <!-- Responsive navbar-->
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
                        <li class="nav-item"><a class="nav-link" href="#!">Contact</a></li>
                    </ul>
                    <%
				}
			%>
                </div>
            </div>
        </nav>
	<%

	// bbsID를 초기화 시키고
	// 'bbsID'라는 데이터가 넘어온 것이 존재한다면 캐스팅을 하여 변수에 담는다
	int bbsID = 0;
	if (request.getParameter("bbsID") != null) {
		bbsID = Integer.parseInt(request.getParameter("bbsID"));
	}

	// 만약 넘어온 데이터가 없다면
	if (bbsID == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글입니다')");
		script.println("location.href='bbs.jsp'");
		script.println("</script");
	}

	// 유효한 글이라면 구체적인 정보를 'bbs'라는 인스턴스에 담는다
	Bbs bbs = new BbsDAO().getBbs(bbsID);
	%>
	
	
	
	
	<!-- 게시판 글 보기 양식 영역 시작 -->
	<div class="container">
		<div class="row">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="2"
							style="background-color: #eeeeee; text-align: center;">게시판 글
							보기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 20%;">글 제목</td>
						<td colspan="2"><%=bbs.getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n",
		"<br>")%></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td colspan="2"><%=bbs.getUserID()%></td>
					</tr>
					<tr>
						<td>작성일자</td>
						<td colspan="2"><%=bbs.getBbsDate().substring(0, 11) + bbs.getBbsDate().substring(11, 13) + "시"
		+ bbs.getBbsDate().substring(14, 16) + "분"%></td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="2" style="height: 200px; text-align: left;"><%=bbs.getBbsContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n",
		"<br>")%></td>
					</tr>
				</tbody>
			</table>
			<a href="bbs.jsp" class="btn btn-primary">목록</a>

			<!-- 해당 글의 작성자가 본인이라면 수정과 삭제가 가능하도록 코드 추가 -->
			<%
			if (userID != null && userID.equals(bbs.getUserID())) {
			%>
			<a href="update.jsp?bbsID=<%=bbsID%>" class="btn btn-primary">수정</a>
			<a href="deleteAction.jsp?bbsID=<%=bbsID%>" class="btn btn-primary">삭제</a>
			<%
			}
			%>
		</div>
	</div>
	<!-- 게시판 글 보기 양식 영역 끝 -->

	<!-- 부트스트랩 참조 영역 -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>