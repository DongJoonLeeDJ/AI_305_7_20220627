<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ�� ����</title>
<link rel="stylesheet" href="JSP_insert.css">
<script>
function check_empty(){
	var writeform = document.writeform;
	
	if(!writeform.userPassword.value){
	  alert("��й�ȣ�� �Է��Ͻʽÿ�.");
	  writeform.userPassword.focus();
	  return false;
	}
	
	if(!writeform.userName.value){
	  alert("�̸��� �Է��Ͻʽÿ�.");
	  writeform.userName.focus();
	  return false;
	}
        
	if(!writeform.tel.value){
	  alert("��ȭ��ȣ�� �Է��Ͻʽÿ�.");
	  writeform.tel.focus();
	  return false;
	}
	
	if(!writeform.email.value){
		  alert("�̸����� �Է��Ͻʽÿ�.");
		  writeform.email.focus();
		  return false;
		}
	
	if(!writeform.birth.value){
		  alert("��������� �Է��Ͻʽÿ�.");
		  writeform.birth.focus();
		  return false;
		}
 };
</script>
</head>
<body>
<div class="form-background">
        <div class="form-white">
            <h2>ȸ������</h2>
            <form action="./SignUpC.jsp" name="signIn" method="post" onsubmit="return check_empty()">
                <div>
                    <p>ID</p>
                    <input type="text" class="form-input" id="userID">
                    <input type="button" value="�ߺ�üũ" onclick="idCheck(this.form.userID.value)"><br>
                </div>
                <div>
                    <p>��й�ȣ</p>
                    <input type="password" class="form-input" name="userPassword"><br>
                </div>
                <div>
                    <p>�̸�</p>
                    <input type="text" class="form-input" name="userName"><br>
                </div>
                <div>
                    <p>��ȭ��ȣ</p>
                    <input type="text" class="form-input" name="tel"><br>
                </div>
                <div>
                    <p>�̸���</p>
                    <input type="email" class="form-input" name="email"><br>
                </div>
                <div>
                    <p>�������</p>
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
		alert("���̵� ���� �Է��ϼ���.");
		document.signIn.userID.focus();
	}else{
		window.location.href="./idCheck.jsp?userID="+id;
	}
}
</script>
</body>
</html>