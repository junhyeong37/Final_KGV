<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<form name="form1" action="UserLogin.do" method="GET">
	<h1>
		아이디 : <input type="text" name="user_id" id="user_id"> <br>
		비밀번호 : <input type="text" name="user_pw" id="user_pw"> <br>
		<input type="submit" value="확인" onclick="login()">
	</h1>
	</form>
	
	<form action="Logo.do">
		<input type="submit" value="테스트" />
	</form>
	

</body>
</html>