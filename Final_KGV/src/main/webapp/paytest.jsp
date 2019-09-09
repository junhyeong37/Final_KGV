<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
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
 
 
 
<form action="play.do" method="get">
<c:forEach items="${ulist }" var="val" varStatus="status">
                  
                 <input type="text" id="user_no" name="user_no" value="${val.user_no }" readonly >
</c:forEach>
<%-- ${movie_name} --%>
<input type="text" id="movie_no" name="movie_no" value="${movie_no}" readonly> 
<input type="text" id="play_theater" name="play_theater" value="${play_theater}" readonly> 
<input type="text" id="play_day"name="play_day" value="${play_day}" readonly>
<input type="text" id="play_time"name="play_time" value="${play_time}" readonly>
<input type="text" id="play_inwon"name="play_inwon" value="${play_inwon}" readonly>
<input type="text" id="play_seat"name="play_seat" value="${play_seat }" readonly>
<input type="text" id="play_price" name="play_price" value="${play_price }" readonly> 
결제하시겠습니까?
<input type="submit" id="play" name="play" value="결제하기">
</form>







</body>
</html>