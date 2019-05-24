<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>Insert title here</title>
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
.w3-bar-block .w3-bar-item {padding:20px}
</style>
<body>

<!-- Sidebar (hidden by default) -->
<nav class="w3-sidebar w3-bar-block w3-card w3-top w3-xlarge w3-animate-left" style="display:none;z-index:2;width:40%;min-width:300px" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()"
  class="w3-bar-item w3-button">Close Menu</a>
  <a href="#food" onclick="w3_close()" class="w3-bar-item w3-button">Food</a>
  <a href="#about" onclick="w3_close()" class="w3-bar-item w3-button">About</a>
</nav>

<!-- Top menu -->
<div class="w3-top">
  <div class="w3-white w3-xlarge" style="max-width:1200px;margin:auto">
    <div class="w3-button w3-padding-16 w3-left" onclick="w3_open()">☰</div>
    <div class="w3-right w3-padding-16">Mail</div>
    <div class="w3-center w3-padding-16">My Food</div>
  </div>
</div>
  
<!-- !PAGE CONTENT! -->
<div class="w3-main w3-content w3-padding" style="max-width:1200px;margin-top:100px">

  <!-- First Photo Grid-->
  <form method="post" action="loginAction.jsp">
		<h3 style="text-align: center;">로그인 화면</h3>
		<div class="form-group">
			<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
		</div>
		<div class="form-group">
			<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
		</div>
		<input type="submit" class="btn btn-primary form-control" value="로그인">
		
		<input type="submit" class="btn btn-primary form-control" value="회원가입">
	
			<a id="custom-login-btn" href="javascript:loginWithKakao()"> <img
				src="//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg"
				width="300" />
		</a>
		<script type='text/javascript'>
			//<![CDATA[
			// 사용할 앱의 JavaScript 키를 설정해 주세요.
			Kakao.init('f8734455c11a843c6a3269ffe4f3a984');
			function loginWithKakao() {
				// 로그인 창을 띄웁니다.
				Kakao.Auth.login({
					success : function(authObj) {
						alert(JSON.stringify(authObj));
					},
					fail : function(err) {
						alert(JSON.stringify(err));
					}
				});
			};
			//]]>
		</script>
	</form>
  
  
<!-- End page content -->
</div>

<script>
// Script to open and close sidebar
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
}
 
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
}
</script>

</body>
</html>
