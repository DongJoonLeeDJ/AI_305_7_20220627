/* 회원가입할 때 ID 등을 빼먹으면 에러 메시지 출력하게 함 */

//window.onload = () => 
//{
//	
//}

//window.onload = function()
//{
//	
//}


	
	//DOMContentLoaded
	//D O M 모두 대문자!!!
	
document.addEventListener("DOMContentLoaded", function()
{
	
//	var, let : var가 조금 옛날꺼, let 최신 문법	
//  var 변수 중복 선언 됨
//  let 변수 중복 선언 안 됨
	//var reg_frm = document.querySelector("#reg_frm");
		//var reg_frm = document.querySelector("#reg_frm");
		
	//querySelector : 스타일 태그에서 썼던 선택자 그대로 쓰기(태그 하나만 선택함)
	//querySelectorAll : 스타일 태그에서 썼던 선택자 이용해서 태그 여러개 선택	
	var reg_frm = document.querySelector("#reg_frm")
	
	var id = document.getElementById("id")
	var pw = document.querySelector("input[name=pw]") //input태그이면서 name속성의 값이 pw인 태그 선택
	
	var pw_check = document.querySelector("#pw_check")
	var name = document.querySelector("#name")
	var eMail = document.querySelector("#eMail")
	
	var submit_btn = document.querySelector("#submitbtn")
	
	function infoConfirm() {
		if(id.value.length == 0)
		{
			alert("아이디는 필수입니다!!!")
			id.focus()
			return
		}
		
		if(id.value.length < 4)
		{
			alert("아이디는 4글자 이상이어야 합니다!!!")
			id.focus()
			return //reg_frm.submit() 하기 전에 종료시켜버림
		}
		
		if(pw.value.length==0)
		{
			alert("비밀번호는 필수 사항입니다.")
			pw.focus()
			return
		}
		
		if(pw.value != pw_check.value)
		{
			alert("비밀번호가 일치하지 않습니다!!!")
			pw.focus()
			return
		}
		
		if(name.value.length==0)
		{
			//자바스크립트는 쌍따옴표 말고 따옴표 안에 문장을 적어도 됨!
			alert('이름은 필수 사항입니다.')
			name.focus()
			return
		}
		if(eMail.value.length ==0)
		{
			alert('메일은 필수입니다!')
			eMail.focus()
			return
		}
		
		
		//만약에 폼태그의 submit이 안 먹히면...
		//함수명을 submit으로 해놓은 게 있거나
		//변수 이름이 submit인 게 있을 수 있으니 수정하세요.
		reg_frm.submit() //만약 id등이 조건 맞으면 submit하기
		
		
	}
	
	//submit_btn 클릭하면 infoConfirm 호출됨(id가 submitbtn인 것)
	submit_btn.onclick = infoConfirm //click처럼 많이 쓰이는 이벤트는 onclick처럼 따로 만들어져 있다.
	

})

//$(function(){})














