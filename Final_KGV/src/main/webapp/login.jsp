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
		���̵� : <input type="text" name="user_id" id="user_id"> <br>
		��й�ȣ : <input type="text" name="user_pw" id="user_pw"> <br>
		<input type="submit" value="Ȯ��" onclick="login()">
	</h1>
	</form>
	
	<form action="Logo.do">
		<input type="submit" value="�׽�Ʈ" />
	</form>
	

</body>
</html>