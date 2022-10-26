<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원 가입</title>
<link rel="stylesheet" href="JSP_insert.css">
<script>
function check_empty(){
	var writeform = document.writeform;
	
	if(!writeform.userPassword.value){
	  alert("비밀번호를 입력하십시오.");
	  writeform.userPassword.focus();
	  return false;
	}
	
	if(!writeform.userName.value){
	  alert("이름을 입력하십시오.");
	  writeform.userName.focus();
	  return false;
	}
        
	if(!writeform.tel.value){
	  alert("전화번호를 입력하십시오.");
	  writeform.tel.focus();
	  return false;
	}
	
	if(!writeform.email.value){
		  alert("이메일을 입력하십시오.");
		  writeform.email.focus();
		  return false;
		}
	
	if(!writeform.birth.value){
		  alert("생년월일을 입력하십시오.");
		  writeform.birth.focus();
		  return false;
		}
 };
</script>
</head>
<body>
<div class="form-background">
        <div class="form-white">
            <h2>회원가입</h2>
            <form action="./SignUpC.jsp" name="signIn" method="post" onsubmit="return check_empty()">
                <div>
                    <p>ID</p>
                    <input type="text" class="form-input" id="userID">
                    <input type="button" value="중복체크" onclick="idCheck(this.form.userID.value)"><br>
                </div>
                <div>
                    <p>비밀번호</p>
                    <input type="password" class="form-input" name="userPassword"><br>
                </div>
                <div>
                    <p>이름</p>
                    <input type="text" class="form-input" name="userName"><br>
                </div>
                <div>
                    <p>전화번호</p>
                    <input type="text" class="form-input" name="tel"><br>
                </div>
                <div>
                    <p>이메일</p>
                    <input type="email" class="form-input" name="email"><br>
                </div>
                <div>
                    <p>생년월일</p>
                    <input type="date" class="form-input" name="birth">
                </div>
                <div style="clear:both; margin:50px;"></div>
                <div class="form-whole">
                </div>
                <div class="footer">
                    <button class="form-submit" type="reset">RESET</button>
                    <button class="form-submit" type="submit">SEND</button>
                </div>
            </form>
        </div>
    </div>
<script>
function idCheck(id){
	if(id==''){
		alert("아이디를 먼저 입력하세요.");
		document.signIn.userID.focus();
	}else{
		window.location.href="./idCheck.jsp?userID="+id;
	}
}
</script>
</body>
</html>