<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<body>

    <c:forEach items="${userlist }" var="val" >
        ${val.user_id }<br>
        ${val.user_name }<br>
    </c:forEach>
    <c:if test="${empty list }">
        ${"�����Ͱ� ���������ʾƿ�."}
    </c:if>

</body>
</html>