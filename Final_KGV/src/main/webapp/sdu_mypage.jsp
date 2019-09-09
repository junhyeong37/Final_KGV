<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<body>
	<div id="wrapper">
	
	<%
			// 현재 로그인된 아이디가 없다면 (= session에 저장된 id가 없다면)
			if (session.getAttribute("ulist") == null) {
		%>
	
		<nav class="navbar navbar-default top-navbar" role="navigation">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle waves-effect waves-dark"
					data-toggle="collapse" data-target=".sidebar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				 <a class="navbar-brand waves-effect waves-dark"
               href="sdu_index_navbar.jsp" style="padding-top: 7px; padding-bottom: 0px;">
               <img alt="" src="assets/img/KGVlogo.png" style="width: 50%;"></a>

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
		
		<%
			}
			// 현재 로그인된 아이디가 있다면 (= session에 저장된 id가 있다면)
			else {
		%>

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
				<li><c:forEach items="${ulist }" var="val" varStatus="status">
						<a class="dropdown-button waves-effect waves-dark" href="#!"
							data-activates="dropdown1"> <i class="fa fa-user fa-fw"></i>
							<b> ${val.user_name }</b> <i class="material-icons right">arrow_drop_down</i></a>
					</c:forEach></li>
			</ul>
		</nav>
		<!-- Dropdown Structure -->
		<ul id="dropdown1" class="dropdown-content">
			<li><a href="sdu_index_navbar.jsp"><i class="fa fa-user fa-fw"></i>
					로그아웃</a></li>
			<li><a href="sdu_mypage.jsp"><i class="fa fa-gear fa-fw"></i>
					My Page</a></li>
			
			
			<!-- 관리자로 로그인 했을때만 뜨는 메뉴 -->
			<c:set var="id" value="admin" />

			<c:forEach items="${ulist }" var="val">

				 <c:if test="${val.user_id eq 'admin'}">
					<li><a href="sdu_admin_movie_insert.jsp"><i
						class="fa fa-gear fa-fw"></i> 관리자 영화입력</a></li>
				</c:if>
				 
			</c:forEach>

			



		</ul>

		<!-- ================================================== -->





		<%
			}
		%>
		
		
		
		<!--/. NAV TOP  -->
		<nav class="navbar-default navbar-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">

					<li><a class="active-menu waves-effect waves-dark"
						href="sdu_index_navbar.jsp"><i class="fa fa-dashboard"></i> 메인</a>
					</li>


					<li><a href="MovieAllData2.do" class="waves-effect waves-dark"><i
							class="fa fa-bar-chart-o"></i> 예매</a></li>

					<li><a href="#" class="waves-effect waves-dark"><i
							class="fa fa-sitemap"></i> 영화<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="sdu_box_office.jsp">박스오피스 랭킹</a></li>
							<li><a href="MovieAllData.do">영화검색</a></li>
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
					<li><a href="sdu_theater.jsp" class="waves-effect waves-dark"><i
							class="fa fa-desktop"></i> 영화관</a></li>

					<!-- <li>
                        <a href="head_test3.jsp" class="waves-effect waves-dark"><i class="fa fa-qrcode"></i> Tabs & Panels</a>
                    </li>
                    
                    <li>
                        <a href="head_test2.jsp" class="waves-effect waves-dark"><i class="fa fa-table"></i> Responsive Tables</a>
                    </li>
                    <li>
                        <a href="head_test2.jsp" class="waves-effect waves-dark"><i class="fa fa-edit"></i> Forms </a>
                    </li>


                    <li>
                        <a href="#" class="waves-effect waves-dark"><i class="fa fa-sitemap"></i> Multi-Level Dropdown<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="#">Second Level Link</a>
                            </li>
                            <li>
                                <a href="#">Second Level Link</a>
                            </li>
                            <li>
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

                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="head_test3.jsp" class="waves-effect waves-dark"><i class="fa fa-fw fa-file"></i> Empty Page</a>
                    </li> -->
				</ul>

			</div>

		</nav>
		<!-- /. NAV SIDE  -->

		<div id="page-wrapper">

			<div class="header">
				<h1 class="page-header">My Page</h1>
				

			</div>




			<div id="page-inner">

				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-action">예매확인 | 취소</div>
							<div class="card-content">

								<div class="">
									<div class="col-md-3"></div>
									<div class="card col-md-6 blue-grey darken-4">
										<div class="card-content white-text">
											<span class="card-title"></span> <img class="" width="100%"
												height="280px" alt="poster" src="assets/img/salad.jpg">
											<div>
												<p>제목 : 기생충</p>
												<p>상영날짜 : 2019-08-23</p>
												<p>좌석정보 : 강남점 A관 H12열</p>
											</div>
										</div>

									</div>

								</div>


								<div class="clearBoth">
									<br />
								</div>

								<div class="row center">
									<a class="waves-effect waves-light btn">예매취소</a>
								</div>
							</div>
						</div>


					</div>
				</div>

				<!-- ======================================================================= -->





				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-action">내가 본 영화</div>
							<div class="card-content">

								<div class="">
									<div class="card col-md-4 blue-grey darken-4">
										<div class="card-content white-text">
											<span class="card-title"></span> <img class="" width="100%"
												height="280px" alt="poster" src="assets/img/salad.jpg">
											<div>
												<p>제목 : 기생충</p>
												<p>상영날짜 : 2019-08-23</p>
												<p>좌석정보 : 강남점 A관 H12열</p>
											</div>
										</div>

									</div>

								</div>
								
								<div class="">
									<div class="card col-md-4 blue-grey darken-4">
										<div class="card-content white-text">
											<span class="card-title"></span> <img class="" width="100%"
												height="280px" alt="poster" src="assets/img/pretty.jpg">
											<div>
												<p>제목 : 기생충</p>
												<p>상영날짜 : 2019-08-23</p>
												<p>좌석정보 : 강남점 A관 H12열</p>
											</div>
										</div>

									</div>

								</div>
								
								<div class="">
									<div class="card col-md-4 blue-grey darken-4">
										<div class="card-content white-text">
											<span class="card-title"></span> <img class="" width="100%"
												height="280px" alt="poster" src="assets/img/cat.jpg">
											<div>
												<p>제목 : 기생충</p>
												<p>상영날짜 : 2019-08-23</p>
												<p>좌석정보 : 강남점 A관 H12열</p>
											</div>
										</div>

									</div>

								</div>
								
								<div class="">
									<div class="card col-md-4 blue-grey darken-4">
										<div class="card-content white-text">
											<span class="card-title"></span> <img class="" width="100%"
												height="280px" alt="poster" src="assets/img/cat.jpg">
											<div>
												<p>제목 : 기생충</p>
												<p>상영날짜 : 2019-08-23</p>
												<p>좌석정보 : 강남점 A관 H12열</p>
											</div>
										</div>

									</div>

								</div>
								
								<div class="">
									<div class="card col-md-4 blue-grey darken-4">
										<div class="card-content white-text">
											<span class="card-title"></span> <img class="" width="100%"
												height="280px" alt="poster" src="assets/img/cat.jpg">
											<div>
												<p>제목 : 기생충</p>
												<p>상영날짜 : 2019-08-23</p>
												<p>좌석정보 : 강남점 A관 H12열</p>
											</div>
										</div>

									</div>

								</div>
								
								<div class="">
									<div class="card col-md-4 blue-grey darken-4">
										<div class="card-content white-text">
											<span class="card-title"></span> <img class="" width="100%"
												height="280px" alt="poster" src="assets/img/cat.jpg">
											<div>
												<p>제목 : 기생충</p>
												<p>상영날짜 : 2019-08-23</p>
												<p>좌석정보 : 강남점 A관 H12열</p>
											</div>
										</div>

									</div>

								</div>
								
								<div class="">
									<div class="card col-md-4 blue-grey darken-4">
										<div class="card-content white-text">
											<span class="card-title"></span> <img class="" width="100%"
												height="280px" alt="poster" src="assets/img/cat.jpg">
											<div>
												<p>제목 : 기생충</p>
												<p>상영날짜 : 2019-08-23</p>
												<p>좌석정보 : 강남점 A관 H12열</p>
											</div>
										</div>

									</div>

								</div>


								<div class="clearBoth">
									<br />
								</div>

								
							</div>
						</div>


					</div>
				</div>



















				






				<!-- ======================================================================= -->




				<footer>
					<div class="center">
						<br> <br> <br> <br> <br> <br> <br>
						<br> <br> <br> <br> <br> <br>
						<%@include file="sdu_footer.jsp"%>
					</div>
				</footer>
			</div>
			<!-- /. PAGE INNER  -->

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