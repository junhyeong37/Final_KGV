<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>���� ���ε� ����</h1>


<form method="post" action="upload" enctype="multipart/form-data">

         <label>email:</label>

         <input type="text" name="email">



         <br><br>


         <label>����:</label>

         <input type="file" name="file1">



         <br><br>



         <input type="submit" value="upload">

</form>

</body>
</html>