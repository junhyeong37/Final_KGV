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

 ${user_name} ������ ȯ���մϴ�
 
 
 
 <c:forEach items="${userlist }" var="val" varStatus="status">
						����ġ��<b> ${val.user_id }</b>
					</c:forEach>
					
					
				�׳�	${user_id } �׳�
 
</body>
</html>