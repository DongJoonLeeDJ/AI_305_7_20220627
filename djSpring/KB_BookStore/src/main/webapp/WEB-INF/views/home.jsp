<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
 <html>
<head>
	<title>Home</title>
</head>
<body>
<form role="form" method="post" autocomplete="off" enctype="multipart/form-data">

				<input type="file" id="gdsImg" name="file" />
 				<%=request.getRealPath("/") %> 			 
<img src="${data.fileName }">
<img src="img/booktest.png">
<img src="/img/booktest.png">
<img src="resources/img/booktest.png">
<img src="/resources/img/booktest.png">
<input type="submit" />
</form>


 <table>
        <tr>
            <th>name1</th>
            <td><input type="text" name="user_name"></td>
        </tr>
        <tr>
            <th>addr1</th>
            <td><input type="text" id="address_kakao" name="address" readonly /></td>
        </tr>
        <tr>
            <th>addr detail2</th>
            <td><input type="text" name="address_detail" /></td>
        </tr>
    </table>
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
window.onload = function(){
// 	 alert("bbb")
    document.getElementById("address_kakao").addEventListener("click", function(){ //
//        alert("aaa")
        new daum.Postcode({
            oncomplete: function(data) { //
                document.getElementById("address_kakao").value = data.address; //
                document.querySelector("input[name=address_detail]").focus(); //
            }
        }).open();
    });
}
</script>
</body>
</html>
