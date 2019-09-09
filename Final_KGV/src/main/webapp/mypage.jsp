<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet" href="assets/materialize/css/materialize.min.css"
	media="screen,projection" />
<!-- Bootstrap Styles-->
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- FontAwesome Styles-->
<link href="assets/css/font-awesome.css" rel="stylesheet" />
<!-- Morris Chart Styles-->
<link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
<!-- Custom Styles-->
<link href="assets/css/custom-styles.css" rel="stylesheet" />
<!-- Google Fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="assets/js/Lightweight-Chart/cssCharts.css">
</head>
<style>
body {
	font-family: 'Open Sans', sans-serif;
	background: #ffffff;
}
</style>
<body>
	<i class="fa fa-user fa-fw" style="font-size: 50px"></i>User 님 예매 확인 !


	<c:forEach items="${ulist }" var="val" varStatus="status">
		<i class="fa fa-user fa-fw" style="font-size: 50px"></i>${val.user_name } 님 예매 확인 !
	</c:forEach>
	<br />

	<c:forEach items="${plist }" var="val" varStatus="status">
		영화 : ${val.movie_name } <br /> 
		영화관 : ${val.PLAY_THEATER } 	<br /> 
		날짜 : ${val.PLAY_DAY } 	<br /> 
		시간 : ${val.PLAY_TIME } 	<br />
		인원 : ${val.PLAY_INWON } 	 <br /> 
		좌석 : ${val.PLAY_SEAT } 	<br /> 
		가격 : ${val.PLAY_PRICE } 	<br />

		<input type="button" value="예매 취소" />
	</c:forEach>























	<script src="assets/js/jquery-1.10.2.js"></script>

	<!-- Bootstrap Js -->
	<script src="assets/js/bootstrap.min.js"></script>

	<script src="assets/materialize/js/materialize.min.js"></script>

	<!-- Metis Menu Js -->
	<script src="assets/js/jquery.metisMenu.js"></script>
	<!-- Morris Chart Js -->
	<script src="assets/js/morris/raphael-2.1.0.min.js"></script>
	<script src="assets/js/morris/morris.js"></script>


	<script src="assets/js/easypiechart.js"></script>
	<script src="assets/js/easypiechart-data.js"></script>

	<script src="assets/js/Lightweight-Chart/jquery.chart.js"></script>

	<!-- Custom Js -->
	<script src="assets/js/custom-scripts.js"></script>
</body>
</html>