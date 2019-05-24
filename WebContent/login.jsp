<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>Insert title here</title>

<body>
	
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

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>