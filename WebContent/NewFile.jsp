<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
<title>Custom Login Demo - Kakao JavaScript SDK</title>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

</head>
<body>
	<a id="custom-login-btn" href="javascript:loginWithKakao()"> <img
		src="//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg"
		width="300" />
	</a>
	<script type='text/javascript'>
		//<![CDATA[
		// ����� ���� JavaScript Ű�� ������ �ּ���.
		Kakao.init('f8734455c11a843c6a3269ffe4f3a984');
		function loginWithKakao() {
			// �α��� â�� ���ϴ�.
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

</body>
</html>