<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

 ${user_name} 가입을 환영합니다
 
 
 
 <c:forEach items="${userlist }" var="val" varStatus="status">
						포이치문<b> ${val.user_id }</b>
					</c:forEach>
					
					
				그냥	${user_id } 그냥
 
</body>
</html>