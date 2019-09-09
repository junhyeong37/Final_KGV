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
	<i class="fa fa-user fa-fw" style="font-size: 50px"></i>User �� ���� Ȯ�� !


	<c:forEach items="${ulist }" var="val" varStatus="status">
		<i class="fa fa-user fa-fw" style="font-size: 50px"></i>${val.user_name } �� ���� Ȯ�� !
	</c:forEach>
	<br />

	<c:forEach items="${plist }" var="val" varStatus="status">
		��ȭ : ${val.movie_name } <br /> 
		��ȭ�� : ${val.PLAY_THEATER } 	<br /> 
		��¥ : ${val.PLAY_DAY } 	<br /> 
		�ð� : ${val.PLAY_TIME } 	<br />
		�ο� : ${val.PLAY_INWON } 	 <br /> 
		�¼� : ${val.PLAY_SEAT } 	<br /> 
		���� : ${val.PLAY_PRICE } 	<br />

		<input type="button" value="���� ���" />
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