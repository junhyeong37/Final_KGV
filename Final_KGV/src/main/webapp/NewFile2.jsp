<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="row">
		<div class="card col-md-12" style="height: 200px; padding-top: 15px;">
			<div class="col-md-1"></div>
			<div class="col-md-10" style="">
				<p style="font-size: x-large; font-weight: bold;">영화 리뷰</p>
				<form action="ReviewInsert.do" method="get">

					<c:forEach items="${ulist }" var="val" varStatus="status">
						<input type="text" id="user_no" name="user_no" value="">${val.user_no }
</c:forEach>

					<c:forEach items="${mlist}" var="val" varStatus="status">
						<input type="text" id="movie_no" name="movie_no">${val.movie_no }
</c:forEach>
					<!-- hidden="" -->


					<textarea name="re_content" id="re_content"
						style="height: 100px; background-color: #f0f8ffc4;"></textarea>

					<input
						class="waves-effect waves-light btn blue-grey darken-4 white-tex"
						type="submit" value="작성">

				</form>
</body>
</html>