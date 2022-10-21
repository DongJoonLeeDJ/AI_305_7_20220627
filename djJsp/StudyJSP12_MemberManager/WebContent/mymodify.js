/*window는 화면 객체*/
/*화면이 다 불러와질 때, 함수 실행*/

/*() => {}  이거랑  function() {} 이거는 서로 똑같은거다*/
// 이렇게 생긴 걸 람다라고 함. (생각보다 여러군데서 많이 씀)
window.onload = () => {
	var reg_frm = document.querySelector("form[name=reg_frm]") //form태그이고, name 속성값이 reg_frm인 태그 선택해서 reg_frm 변수에 저장
	var pw = document.querySelector("input[name=pw]")
	var pw_check = document.querySelector("input[name=pw_check]")
	var eMail = document.querySelector("input[name=eMail]")
	var submitbtn = document.querySelector("#submitbtn")
	
	function updateInfoConfirm() {
		if(pw.value=="") //pw.value="" 이렇게 적으면 무조건 false이다!!! == 으로 적어야 됨!!!!!
		{
			alert('패스워드입력!')
			pw.focus()
			return
		}
		if(pw.value != pw_check.value) {
			alert('패스워드다름')
			pw.focus()
			return
		}
		if(eMail.value.length==0) {
			alert('메일 필수')
			eMail.focus()
			return
		}
		reg_frm.submit() //submit은 우리가 만든 건 아니고 form태그에 원래 있는 기능이다.
	}
	
	submitbtn.addEventListener("click", updateInfoConfirm)
	//submitbtn.onclick = updateInfoConfirm //id가 submitbtn인 태그를 클릭시 updateInfoConfirm을 호출
}






























//function updateInfoConfirm() {
//	if(document.reg_frm.pw.value=="")
//	{
//		alert('패스워드입력!')
//		document.reg_frm.pw.focus()
//		return
//	}
//	
//	if(document.reg_frm.pw.value != document.reg_frm.pw_check.value) {
//		alert('패스워드가 일치하지 않음')
//		reg_frm.pw.focus()
//		return
//	}
//	if(document.reg_frm.eMail.value.length==0){
//		alert("메일은 필수입니다.")
//		reg_frm.eMail.focus()
//		return
//	}
//	document.reg_frm.submit()
//}