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
</head>
<style>
.main {
	padding-left: 20%;
	padding-right: 20%;
	margin-bottom: 10%;
}

.main .back {
	padding: 15px 0px 8px 0px;
	background-color: #ededed;
	width: 100%;
	float: left
}

.main .back2 {
	background-color: #ededed;
	width: 100%;
	float: left;
	height: 65px
}

.main .back3 {
	background-color: #ededed;
	width: 100%;
	float: left;
	height: 160px
}

.main .back3 p {
	font-weight: 700;
	padding: 20px 0px 20px 0px;
	padding-left: 3%;
	width: 20%;
	float: left
}

.main .back2 p {
	font-weight: 700;
	padding: 20px 0px 20px 0px;
	padding-left: 3%;
	width: 20%;
	float: left
}

.main .back p {
	padding-left: 3%;
	font-weight: 700;
	word-spacing: 50px;
	width: 50%;
	float: left;
}

.main .inline-hr {
	margin-top: 3px;
	margin-bottom: 0px;
	border: 0;
	border-bottom: 1px solid white;
	float: left;
	width: 100%;
}

.center {
	text-align: center
}

.text-area {
	resize: none;
	font-size: 14px;
	background-color: white;
	margin-right: 20px;
	height: 44px;
	margin-top: 10px;
	width: 73%;
	height: 80%;
	float: right
}
@media(max-width:1024px){

.main {
	padding-left: 10%;
	padding-right: 10%;
	margin-bottom: 10%;
}
}



@media(max-width:768px) {

.main {
	padding-left: 0%;
	padding-right: 0%;
	margin-bottom: 10%;
}






}
</style>

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
			<!-- <li><a href="#"><i class="fa fa-sign-out fa-fw"></i> 설정</a>
</li> -->
		</ul>

		<!--/. NAV TOP  -->
		<nav class="navbar-default navbar-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">

					<li><a class="waves-effect waves-dark"
						href="sdu_index_navbar.jsp"><i class="fa fa-dashboard"></i> 메인</a>
					</li>


					<li><a href="sdu_reserv.jsp" class="waves-effect waves-dark"><i
							class="fa fa-bar-chart-o"></i> 예매</a></li>

					<li><a href="#" class="waves-effect waves-dark"><i
							class="fa fa-sitemap"></i> 영화<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="sdu_box_office.jsp">박스오피스 랭킹</a></li>
							<li><a href="sdu_movie_search.jsp">영화검색</a></li>
							<!-- <li>
                                <a href="#">Second Level Link<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="#">Third Level Link</a>
                                    </li>
                                    <li>	
                                        <a href="#">Third Level Link</a>
                                    </li>
                                    <li>
                                        <a href="#">Third Level Link</a>
                                    </li>

                                </ul>

                            </li> -->
						</ul></li>
					<li><a href="sdu_content.jsp"
						class="active-menu waves-effect waves-dark"><i
							class="fa fa-desktop"></i> 고객센터</a></li>


				</ul>

			</div>

		</nav>
		<!-- /. NAV SIDE  -->

		<div id="page-wrapper">
			<div class="logo">
				<p class="center">
					<img
						style="width: 100px; height: 100; text-align: center; padding-top: 100px; padding-bottom: 50px"
						src="img/2.png ">
				<p>
			</div>
			<div>
				<h1 class="center">고객문의</h1>
				<br> <br> <br>
				<p class="center">불편사항이나 문의사항을 남겨주시면 신속히 답변해 드리겠습니다.</p>
				<br>

			</div>
			<div class="main">
				<h4>회원정보</h4>
				<hr>
				<div class="back">
					<p>아이디</p>
					<p style="width: 50%; float: right;">d</p>

				</div>
				<hr class="inline-hr">

				<div class="back">
					<p>이름</p>
					<p style="width: 50%; float: right;">d</p>

				</div>
				<hr class="inline-hr">
				<div class="back">
					<p>휴대전화</p>
					<p style="width: 50%; float: right;">d</p>
				</div>
				<h4 style="margin-top: 250px">문의작성</h4>
				<hr>
				<form action="" method="post">
					<div class="back2">
						<p>문의 제목</p>
						<input type="text" id=""
							style="font-size: 14px; background-color: white; margin-right: 20px; height: 44px; margin-top: 10px; width: 72%; float: right">

					</div>
					
					<div class="back3">
						<p>문의내용</p>

						<textarea class="text-area"></textarea>

					</div>

					<input
						style="margin-top: 10px; background-color: black; border: 0px; width: 70px; height: 40px; font-size: 20px; color: white; float: right"
						type="submit" value="등록">

				</form>

			</div>









			<footer>
				<div class="center">
					<br> <br> <br> <br> <br> <br> <br>
					<br> <br> <br> <br> <br> <br>
					<%@include file="sdu_footer.jsp"%>
				</div>
			</footer>
		</div>
		<!-- /. PAGE INNER  -->

		<!-- /. PAGE WRAPPER  -->


	</div>
	<!-- /. WRAPPER  -->
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