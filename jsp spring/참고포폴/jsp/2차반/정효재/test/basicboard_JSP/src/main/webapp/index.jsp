<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="JSP_index.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@600&display=swap" rel="stylesheet">
</head>

<body>
    <div class="mainform-div">
       <div class="login_form"></div>
       <div class="login_form2">
        <form action="./SignInC.jsp" method="post" class="form1">
           <div class="login_form3">
            <label for="userID">���̵� </label> <input type="text" id="userID" name="userID"> <br>
            <label for="userPassword">��й�ȣ</label> <input type="password" id="userPassword" name="userPassword"><br>
            </div>
            <input type="submit" value="�α���">
        </form>
        <form action="./SignUpForm.jsp" method="post" class="form2">
            <input type="submit" value="ȸ������">
        </form>
        </div>
    </div>
</body>

</html>