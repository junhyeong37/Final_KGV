<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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
.navbar-default {
	background-color: #333333;
	border-color: #e7e7e7
}

/* 슬라이드 css */
#carousel_section {
	width: 100%;
	background-color: gray;
}

#carousel_section>ul {
	margin: 0px;
	padding: 0px;
	width: 100%;
	height: 100%;
	position: relative;
	overflow: hidden;
}

#carousel_section>ul>li {
	list-style: none;
	width: 100%;
	height: 100%;
	position: absolute;
}

#carousel_section>ul>li>img {
	list-style: none;
	width: 100%;
	height: 100%;
	object-fit: cover;
}
</style>

<script type="text/javascript">
	$('.top').click(function() {
		$('html, body').animate({
			scrollTop : 0
		}, 400);
		return false;
	});
</script>


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

		<!--/. NAV TOP  -->
		<nav class="navbar-default navbar-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">
					<li><a class="active-menu waves-effect waves-dark"
						href="sdu_index_navbar.jsp"><i class="fa fa-dashboard"></i> 메인</a>
					</li>


					<li><a href="sdu_reserv.jsp" class="waves-effect waves-dark"><i
							class="fa fa-bar-chart-o"></i> 예매</a></li>

					<li><a href="#" class="waves-effect waves-dark"><i
							class="fa fa-sitemap"></i> 영화<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="sdu_box_office.jsp">박스오피스 랭킹</a></li>
							<li><a href="MovieAllData.do">영화검색</a></li>

						</ul></li>
					<li><a href="sdu_content.jsp" class="waves-effect waves-dark"><i
							class="fa fa-desktop"></i> 고객센터</a></li>


				</ul>

			</div>

		</nav>
		<!-- /. NAV SIDE  -->

		<div id="page-wrapper">
			<br> <br> <br> <br> <br> <br> <br>
			
			<jsp:include page="Slide.jsp"></jsp:include>
			<%-- <c:if test="${not empty movielist }"> --%>
			<%-- <c:forEach var="movie" items="${movielist }" varStatus="status">
			
			<div id="carousel">
				<c:if test="${status.index eq 1 }">
				<div class="slideImg hideLeft">
					<img
						src="${movie.movie_photo }">
				</div>
				</c:if>
				<c:if test="${status.index eq 2 }">
				<div class="slideImg prevLeftSecond">
					<img
						src="${movie.movie_photo }">
				</div>
				</c:if>
				<c:if test="${status.index eq 0 }">
				<div class="slideImg prev">
					<img
						src="${movie.movie_photo }">
				</div>
				</c:if>
				<c:if test="${status.index eq 1 }">
				<div class="slideImg selected">
					<img
						src="${movie.movie_photo }">
				</div>
				</c:if>
				<c:if test="${status.index eq 1 }">
				<div class="slideImg next">
					<img
						src="${movie.movie_photo }">
				</div>
				</c:if>
				<c:if test="${status.index eq 1 }">
				<div class="slideImg nextRightSecond">
					<img
						src="${movie.movie_photo }">
				</div>
				</c:if>
				<c:if test="${status.index eq 1 }">
				<div class="slideImg hideRight">
					<img
						src="${movie.movie_photo }">
				</div>
				</c:if>
			</div></c:forEach> --%>
			
			<!-- sp-slideshow -->
			<%-- </c:if> --%>
			<!--   <div class="positionBtn">
                        <button id="prev"><span>PREV</span></button>
                        <button id="next"><span>NEXT</span></button>
                    </div> -->


			<!-- <br> <br> <br> <br> <br>  -->


			<div class="gong"></div>


			<div id="page-inner">
				<div class="row">
					<div class="col-md-8 col-sm-12 col-xs-12">
						<div class="card">
							<div class="card-action">
								<b>이달의 상영작</b>
							</div>
							<div class="card-image">
								<div class="video">
									<iframe width="80%" height="90%"
										src="https://www.youtube.com/embed/WaxgJggEm3Q"
										frameborder="0"> </iframe>

								</div>
							</div>


						</div>

					</div>
					<div class="col-md-4 col-sm-12 col-xs-12">
						<div class="card">
							<div class="card-action">
								<b>포스터</b> <img src="assets/img/movie0.jpg" width="100%"
									height="90%">
							</div>
						</div>
					</div>
				</div>
			</div>


			<div class="gong"></div>


			<div id="page-inner">
				<div class="row">
					<div class="col-md-8 col-sm-12 col-xs-12">
						<div class="card">
							<div class="card-action">
								<b>리뷰 게시판</b>
							</div>
							<div class="card-image">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover"
										id="dataTables-example">
										<thead>
											<tr>
												<th>Rendering engine</th>
												<th>Browser</th>

											</tr>
										</thead>
										<tbody>
											<tr class="odd gradeX">
												<td>Trident</td>
												<td>Internet Explorer 4.0</td>

											</tr>
											<tr class="even gradeC">
												<td>Trident</td>
												<td>Internet Explorer 5.0</td>

											</tr>
											<tr class="odd gradeA">
												<td>Trident</td>
												<td>Internet Explorer 5.5</td>

											</tr>
											<tr class="even gradeA">
												<td>Trident</td>
												<td>Internet Explorer 6</td>

											</tr>
										</tbody>
									</table>
								</div>
							</div>


						</div>

					</div>
					<div class="col-md-4 col-sm-12 col-xs-12">
						<div class="card">
							<div class="card-action">
								<b>게시판 상영작</b> <img src="assets/img/movie0.jpg" width="100%"
									height="90%">
							</div>
						</div>
					</div>
				</div>

				<div class="gong"></div>


				<div id="footer">
					<footer>
						<div class="center">
							<br> <br> <br> <br> <br> <br> <br>
							<br> <br> <br> <br> <br> <br>
							<%@include file="sdu_footer.jsp"%>
						</div>
					</footer>
				</div>


			</div>
			<!-- page-wrapper -end -->
			<div class="fixed-action-btn horizontal click-to-toggle">
				<a class="btn-floating btn-large red top" href="#"> <i
					class="material-icons">publish</i>
				</a>

			</div>
		</div>
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