<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Warm Place_맛집후기쓰기</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
</head>
<body>
<%
		// 메인 페이지로 이동했을 때 세션에 값이 담겨있는지 체크
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
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
                        <li class="nav-item"><a class="nav-link" href="#!">마이페이지</a></li>
                    </ul>
                    <%
				}
			%>
                </div>
            </div>
        </nav>
       
    
			 
                  	<%
		
		int pageNumber = 1; //기본은 1 페이지를 할당
		// 만약 파라미터로 넘어온 오브젝트 타입 'pageNumber'가 존재한다면
		// 'int'타입으로 캐스팅을 해주고 그 값을 'pageNumber'변수에 저장한다
		if(request.getParameter("pageNumber") != null){
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}
	%>
		
	<!-- 게시판 메인 페이지 영역 시작 -->
	<div class="container px-5 my-5 px-5 " style="width:1000px;">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeeee; text-align: center;">작성자</th>
						<th style="background-color: #eeeeee; text-align: center;">작성일</th>
					</tr>
				</thead>
				<tbody>
					<%
						BbsDAO bbsDAO = new BbsDAO(); // 인스턴스 생성
						ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
						for(int i = 0; i < list.size(); i++){
					%>
					
<%-- <!-- 						<td><%= list.get(i).getBbsID() %></td> --> --%>
					<tr>
						<td><%= (i+1) %></td>
						<!-- 게시글 제목을 누르면 해당 글을 볼 수 있도록 링크를 걸어둔다 -->
						<td><a href="view.jsp?bbsID=<%= list.get(i).getBbsID() %>">
							<%= list.get(i).getBbsTitle() %></a></td>
						<td><%= list.get(i).getUserID() %></td>
						<td><%= list.get(i).getBbsDate().substring(0, 11) + list.get(i).getBbsDate().substring(11, 13) + "시"
							+ list.get(i).getBbsDate().substring(14, 16) + "분" %></td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
			
			<!-- 페이징 처리 영역 -->
			<%
				if(pageNumber != 1){
			%>
				<a href="bbs.jsp?pageNumber=<%=pageNumber - 1 %>"
					class="btn btn-success btn-arraw-left">이전</a>
			<%
				}if(bbsDAO.nextPage(pageNumber + 1)){
			%>
				<a href="bbs.jsp?pageNumber=<%=pageNumber + 1 %>"
					class="btn btn-success btn-arraw-left">다음</a>
			<%
				}
			%>
			
			<!-- 글쓰기 버튼 생성 -->
			<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
		</div>
	</div>
	<!-- 게시판 메인 페이지 영역 끝 -->
	
	<!-- 부트스트랩 참조 영역 -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>

</body>
</html>