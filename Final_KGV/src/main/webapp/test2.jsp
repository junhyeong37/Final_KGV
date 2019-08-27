<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	넘어온 유저 아이디 : ${ulist} <br />
	<c:forEach items="${ulist }" var="val" varStatus="status">
		테스트 1 : ${val.user_id } <br />
		테스트 2 :${val.user_address } <br />
		테스트 3 : ${val} 
	</c:forEach>
	<a href=""></a>
</body>
</html>