<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


<c:forEach var="nvo" items="${movielist }">
						<tr>
							<td>${nvo.movie_name}</td>
							<td>${nvo.movie_level}</td>
							<td>${nvo.movie_genre}</td>
							<td>${nvo.movie_content}</td>
							<td>${nvo.movie_director}</td>
							<td>${nvo.movie_actor}</td>
							<td>${nvo.movie_runtime}</td>
							<td>${nvo.movie_openday}</td>
						</tr>

					</c:forEach>

</body>
</html>