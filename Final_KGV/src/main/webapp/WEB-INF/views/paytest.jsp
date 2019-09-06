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

<%-- <c:forEach var="e" items="${A}"> 
${e.A}
 </c:forEach>
<c:forEach var="e" items="${B}"> 
${e.B}
 </c:forEach>
<c:forEach var="e" items="${C}"> 
${e.C}
 </c:forEach>

<c:forEach var="e" items="${D}"> 
${e.D}
 </c:forEach>

<c:forEach var="e" items="${E}"> 
${e.E}
 </c:forEach> 
 
<c:forEach var="e" items="${Z},${Y}"> 
${Z*10000 + Y*8000 }
 </c:forEach>
 --%>
<c:forEach items="${ulist }" var="val" varStatus="status">
                  
                      ${val.user_no }
</c:forEach>
${movie_name}
${movie_no}
${play_theater}
${play_day}
${play_inwon}
${play_seat }
${play_price }










</body>
</html>