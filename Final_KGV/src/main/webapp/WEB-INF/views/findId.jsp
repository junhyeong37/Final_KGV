<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<c:forEach var="ul" items="${ulist}" begin=1 end=10 step=1 varStatus="status">
    아이디 : ${ul.user_id}
</c:forEach>



</body>
</html>