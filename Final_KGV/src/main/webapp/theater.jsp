<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>KGV</title>
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


<style>
#container-1 {
	width: 1200px;
	height: 800px;
	background-color: black;
	margin-left: 150px;
	position: relative;
}

.col-head-1 {
	height: 50px;
	background-color: black;
}

.col-body {
	width: 100%;
	position: relative;
	overflow: hidden;
}
.screen{
width:70%;
height:100%;

}

.col-body-1 {
	height: 750px;
	width: 80%;
	background-color: white;
	position: absolute;
}

.col-body-2 {
	height: 750px;
	width: 20%;
	background-color: white;
	right: -1px;
	position: absolute;
}

.person_screen {
	height: 130px;


}

.person_screen_info_1 {
	width: 50%;
	height: 100%;
	background-color: #f2f0e5;
	
}

.person_screen_info_2 {
	display: block;
	height: 130px;
	width: 50%;
	float: none;
	position: absolute;
	top: 0;
	left: 480px;
	background-color: black;
}

.perNum-select {

	margin-left: 15px;
	padding-right: 18px;
	border-right: 1px solid #d4d3c9;
}

.title {
	float: left;
	width: 55px;
	letter-spacing: -0.1em;
}

.btn1 {
	cursor: pointer;
}
.cc ul{
margin-bottom:-0.000000000000000000001px;
margin-top:30px;
}
.cc ul li a {
	color: #000;
	margin: 1px;
	border: 1px solid #f2f0e5;
	width: 20px;
	height: 20px;
	line-height: 16px;
	display: block;
	font-family: Verdana;
	font-size: 15px;
	font-weight: bold;
	text-align: center;
}

.cc ul li.selected a {
	color: #fff;
	margin: 1px;
	border: 1px solid #5c5c5c;
	width: 20px;
	height: 20px;
	line-height: 16px;
	display: block;
	font-family: Verdana;
	font-size: 15px;
	font-weight: bold;
	text-align: center;
}

.cc ul li {
	border-color: #000;
	background-color: #f2f0e5;
	border: 1px solid #d6d3ce;
	float: left;
	margin-right: 6px;
}

.cc ul li.selected {
	border-color: #000;
	background-color: #333;
	border: 1px solid #d6d3ce;
	float: left;
	margin-right: 6px
}

.cc ul a:link {
	color: black;
	text-decoration: none;
}

.cc ul  a:visited {
	color: black;
	text-decoration: none;
}

.cc ul li a:hover {
	color: black;
	text-decoration: underline;
}

</style>


</head>

<body>
	<div id="wrapper">
		<nav class="navbar navbar-default top-navbar" role="navigation">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle waves-effect waves-dark"
					data-toggle="collapse" data-target=".sidebar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand waves-effect waves-dark"
					href="sdu_index_navbar.jsp"><i class="large material-icons">track_changes</i>
					<strong>KGV</strong></a>

				<div id="sideNav" href="">
					<i class="material-icons dp48">toc</i>
				</div>
			</div>

			<ul class="nav navbar-top-links navbar-right">
				<!-- <li><a class="dropdown-button waves-effect waves-dark" href="#!" data-activates="dropdown4"><i class="fa fa-envelope fa-fw"></i> <i class="material-icons right">arrow_drop_down</i></a></li>				
				<li><a class="dropdown-button waves-effect waves-dark" href="#!" data-activates="dropdown3"><i class="fa fa-tasks fa-fw"></i> <i class="material-icons right">arrow_drop_down</i></a></li>
				<li><a class="dropdown-button waves-effect waves-dark" href="#!" data-activates="dropdown2"><i class="fa fa-bell fa-fw"></i> <i class="material-icons right">arrow_drop_down</i></a></li> -->
				<!--   <li><a class="dropdown-button waves-effect waves-dark" href="#!" data-activates="dropdown1"><i class="fa fa-user fa-fw"></i> <b>John Doe</b> <i class="material-icons right">arrow_drop_down</i></a></li> -->
				<li><a class="dropdown-button waves-effect waves-dark"
					href="#!" data-activates="dropdown1"><i
						class="fa fa-user fa-fw"></i> <i class="material-icons right">arrow_drop_down</i></a></li>
			</ul>
		</nav>
		<!-- Dropdown Structure -->
		<ul id="dropdown1" class="dropdown-content">
			<li><a href="sdu_login.jsp"><i class="fa fa-user fa-fw"></i>
					로그인</a></li>
			<li><a href="sdu_membership.jsp"><i class="fa fa-gear fa-fw"></i>
					회원가입</a></li>

		</ul>

		<nav class="navbar-default navbar-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">

					<li><a class="waves-effect waves-dark"
						href="sdu_index_navbar.jsp"><i class="fa fa-dashboard"></i> 메인</a>
					</li>
					<!-- <li>
                        <a href="sdu_movie.jsp" class="waves-effect waves-dark"><i class="fa fa-desktop"></i> 영화</a>
                    </li> -->

					<li><a href="sdu_reserv.jsp" class="waves-effect waves-dark"><i
							class="fa fa-bar-chart-o"></i> 예매</a></li>

					<li><a href="#" class="active-menu waves-effect waves-dark"><i
							class="fa fa-sitemap"></i> 영화<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="sdu_box_office.jsp">박스오피스 랭킹</a></li>
							<li><a href="sdu_movie_search.jsp">영화검색</a></li>



						</ul></li>
					<li><a href="sdu_content.jsp" class="waves-effect waves-dark"><i
							class="fa fa-desktop"></i> 고객센터</a></li>


				</ul>

			</div>

		</nav>
		<!-- /. NAV SIDE  -->


		<div id="page-wrapper">

			<div class="header">
				<h1 class="page-header">인원 및 좌석 선택</h1>
			</div>
			<br> <br> <br> <br> <br>






			<div id="page-inner">

				<div id="container-1">
					<div class="col-head-1"></div>
					<div class="col-body-1">
						<div class="person_screen">
							<div class="person_screen_info_1">
								
							</div>
							<div class="person_screen_info_2"></div>
						</div>
						
						<div class="info1"></div>

					</div>
					<div class="col-body-2"></div>



				</div>
















				<footer>
					<div class="center">
						<br> <br> <br> <br> <br> <br> <br>
						<br> <br> <br> <br> <br> <br>
						<%@include file="sdu_footer.jsp"%>
					</div>
				</footer>
			</div>
		</div>
		<!-- /. PAGE INNER  -->

	</div>
	<!-- /. PAGE WRAPPER  -->

	<script>
		function clickBtn(id) {
			for (var i = 0; i < 9; i++) {
				document.getElementById(i).setAttribute('class', '');
			}
			document.getElementById(id).setAttribute('class', 'selected');

		}
	</script>
	<!-- JS Scripts-->
	<!-- jQuery Js -->
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