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

<style type="text/css">
.sorting_asc th {
	width: 40%;
}
.center{
text-align: center;
}
.middle{ 
vertical-align:middle;
}

.table-responsive div{
overflow-x:hidden;
}

.table-bordered thead {
	border: 0px solid #ddd;
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
					<li><a href="sdu_content.jsp" class="waves-effect waves-dark"><i
							class="fa fa-desktop"></i> 고객센터</a></li>


				</ul>

			</div>

		</nav>
		<!-- /. NAV SIDE  -->

		<div id="page-wrapper" style="height: 1850px;">

			<div class="header">
				<h1 class="page-header">영화검색 & 영화리스트</h1>
				<ol class="breadcrumb">
					<li class="active">최신순</li>
					<li><a href="#">예매순</a></li>
					<li><a href="#">개봉일순</a></li>

				</ol>

			</div>




			<div id="page-inner" style="padding-left: 0px; padding-right: 0px;">

				<!-- <div id="dataTables-example-wrapper"
					class="dataTables-wrapper form-inline" role="grid">

					<strong>Search<input type="search"
						class="form-control input-sm" aria-controls="dataTables-exemple"></strong>
					<br> <br> <br> -->


				<!-- <div class="card blue-grey darken-4">

						<div class="row">
							<div class="col-md-4 col-sm-4">
								<div class="card blue-grey darken-4">
									<div class="card-content white-text">
										<span class="card-title">포스터</span> 
										
										<a href="sdu_movie_info.jsp"><img class="" width="100%"
											height="280px" alt="poster" src="assets/img/salad.jpg"></a>
										
										
									</div>

								</div>
							</div>
							
								
							<div class="col-md-8 col-sm-4">
								<div class="card blue-grey darken-4">
									<div class="card-content white-text">
									  <div class="table-responsive">
									  
										<span class="card-title">기생충</span>
										<ul class="collapsible" data-collapsible="accordion">
							 -->

				<div class="col-md-8" style="padding-left: 0px; padding-right: 0px;">

					<div class="card">

						<div class="card-content" style="text-align: center;">
							<div class="table-responsive">



								<table class="table table-striped table-bordered table-hover"
									id="dataTables-example">

									<thead>
										<tr>
											<th width="30%;"></th>
											<th width="60%"></th>
											<th width="10%"></th>
										</tr>
									</thead>
									<tbody> 
										<tr class="odd gradeX">
											<td class="center" style="vertical-align: middle;"><img alt="" class="img" src="assets/img/ki.jpg"
												width="150px;"></td>
											<td><ul class="collapsible" data-collapsible="accordion">
											<li>
														<div
															class="collapsible-header blue-grey white-text">
															<i class="material-icons">theaters</i>기생충
														</div>
														
													</li>
													<li>
														<div
															class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">theaters</i>장르
														</div>
														<div class="collapsible-body">
															<p>액션, SF, 드라마</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">perm_identity</i>감독
														</div>
														<div class="collapsible-body">
															<p>봉준호</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text" >
															<i class="material-icons">assignment_ind</i>배우
														</div>
														<div class="collapsible-body">
															<p>박소담</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">voicemail</i>상영시간
														</div>
														<div class="collapsible-body">
															<p>131분</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">thumb_up</i>만족도
														</div>
														<div class="collapsible-body">
															<p>98% 좋아요</p>
														</div>
													</li>
												</ul></td>
											<th style="vertical-align: middle;"><div align="center">
													<input type="button" value="선택" onclick="location.href='sdu_reserv.jsp'">
												</div></th>
										</tr>
										
										
										<tr class="even gradeC">
											<td class="center" style="vertical-align: middle;"><img alt="" class="img" src="assets/img/movie1.jpg"
												width="150px;"></td>
											<td><ul class="collapsible" data-collapsible="accordion">
													<li>
														<div
															class="collapsible-header blue-grey white-text">
															<i class="material-icons">theaters</i>기생충
														</div>
														
													</li>
													<li>
														<div
															class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">theaters</i>장르
														</div>
														<div class="collapsible-body">
															<p>액션, SF, 드라마</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">perm_identity</i>감독
														</div>
														<div class="collapsible-body">
															<p>봉준호</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text" >
															<i class="material-icons">assignment_ind</i>배우
														</div>
														<div class="collapsible-body">
															<p>박소담</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">voicemail</i>상영시간
														</div>
														<div class="collapsible-body">
															<p>131분</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">thumb_up</i>만족도
														</div>
														<div class="collapsible-body">
															<p>98% 좋아요</p>
														</div>
													</li>
												</ul></td>
											<th style="vertical-align: middle;"><div align="center">
													<input type="button" value="선택" onclick="location.href='sdu_reserv.jsp'">
												</div></th>
										</tr>
										<tr class="odd gradeA">
											<td class="center" style="vertical-align: middle;"><img alt="" class="img" src="assets/img/movie2.jpg"
												width="150px;"></td>
											<td><ul class="collapsible" data-collapsible="accordion">
													<li>
														<div
															class="collapsible-header blue-grey white-text">
															<i class="material-icons">theaters</i>기생충
														</div>
														
													</li>
													<li>
														<div
															class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">theaters</i>장르
														</div>
														<div class="collapsible-body">
															<p>액션, SF, 드라마</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">perm_identity</i>감독
														</div>
														<div class="collapsible-body">
															<p>봉준호</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text" >
															<i class="material-icons">assignment_ind</i>배우
														</div>
														<div class="collapsible-body">
															<p>박소담</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">voicemail</i>상영시간
														</div>
														<div class="collapsible-body">
															<p>131분</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">thumb_up</i>만족도
														</div>
														<div class="collapsible-body">
															<p>98% 좋아요</p>
														</div>
													</li>
												</ul></td>
											<th style="vertical-align: middle;"><div align="center">
													<input type="button" value="선택" onclick="location.href='sdu_reserv.jsp'">
												</div></th>
										</tr>
										<tr class="even gradeA">
											<td class="center" style="vertical-align: middle;"><img alt="" class="img" src="assets/img/movie3.jpg"
												width="150px;"></td>
											<td><ul class="collapsible" data-collapsible="accordion">
													<li>
														<div
															class="collapsible-header blue-grey white-text">
															<i class="material-icons">theaters</i>기생충
														</div>
														
													</li>
													<li>
														<div
															class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">theaters</i>장르
														</div>
														<div class="collapsible-body">
															<p>액션, SF, 드라마</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">perm_identity</i>감독
														</div>
														<div class="collapsible-body">
															<p>봉준호</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text" >
															<i class="material-icons">assignment_ind</i>배우
														</div>
														<div class="collapsible-body">
															<p>박소담</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">voicemail</i>상영시간
														</div>
														<div class="collapsible-body">
															<p>131분</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">thumb_up</i>만족도
														</div>
														<div class="collapsible-body">
															<p>98% 좋아요</p>
														</div>
													</li>
												</ul></td>
											<th style="vertical-align: middle;"><div align="center">
													<input type="button" value="선택" onclick="location.href='sdu_reserv.jsp'">
												</div></th>
										</tr>
										<tr class="odd gradeA">
											<td class="center" style="vertical-align: middle;"><img alt="" class="img" src="assets/img/movie4.jpg"
												width="150px;"></td>
											<td><ul class="collapsible" data-collapsible="accordion">
													<li>
														<div
															class="collapsible-header blue-grey white-text">
															<i class="material-icons">theaters</i>기생충
														</div>
														
													</li>
													<li>
														<div
															class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">theaters</i>장르
														</div>
														<div class="collapsible-body">
															<p>액션, SF, 드라마</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">perm_identity</i>감독
														</div>
														<div class="collapsible-body">
															<p>봉준호</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text" >
															<i class="material-icons">assignment_ind</i>배우
														</div>
														<div class="collapsible-body">
															<p>박소담</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">voicemail</i>상영시간
														</div>
														<div class="collapsible-body">
															<p>131분</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">thumb_up</i>만족도
														</div>
														<div class="collapsible-body">
															<p>98% 좋아요</p>
														</div>
													</li>
												</ul></td>
											<th style="vertical-align: middle;"><div align="center">
													<input type="button" value="선택" onclick="location.href='sdu_reserv.jsp'">
												</div></th>
										</tr>
										<tr class="even gradeA">
											<td class="center" style="vertical-align: middle;"><img alt="" class="img" src="assets/img/movie5.jpg"
												width="150px;"></td>
											<td><ul class="collapsible" data-collapsible="accordion">
													<li>
														<div
															class="collapsible-header blue-grey white-text">
															<i class="material-icons">theaters</i>기생충
														</div>
														
													</li>
													<li>
														<div
															class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">theaters</i>장르
														</div>
														<div class="collapsible-body">
															<p>액션, SF, 드라마</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">perm_identity</i>감독
														</div>
														<div class="collapsible-body">
															<p>봉준호</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text" >
															<i class="material-icons">assignment_ind</i>배우
														</div>
														<div class="collapsible-body">
															<p>박소담</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">voicemail</i>상영시간
														</div>
														<div class="collapsible-body">
															<p>131분</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">thumb_up</i>만족도
														</div>
														<div class="collapsible-body">
															<p>98% 좋아요</p>
														</div>
													</li>
												</ul></td>
											<th style="vertical-align: middle;"><div align="center">
													<input type="button" value="선택" onclick="location.href='sdu_reserv.jsp'">
												</div></th>
										</tr>
										<tr class="even gradeA">
											<td class="center" style="vertical-align: middle;"><img alt="" class="img" src="assets/img/movie6.jpg"
												width="150px;"></td>
											<td><ul class="collapsible" data-collapsible="accordion">
													<li>
														<div
															class="collapsible-header blue-grey white-text">
															<i class="material-icons">theaters</i>기생충
														</div>
														
													</li>
													<li>
														<div
															class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">theaters</i>장르
														</div>
														<div class="collapsible-body">
															<p>액션, SF, 드라마</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">perm_identity</i>감독
														</div>
														<div class="collapsible-body">
															<p>봉준호</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text" >
															<i class="material-icons">assignment_ind</i>배우
														</div>
														<div class="collapsible-body">
															<p>박소담</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">voicemail</i>상영시간
														</div>
														<div class="collapsible-body">
															<p>131분</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">thumb_up</i>만족도
														</div>
														<div class="collapsible-body">
															<p>98% 좋아요</p>
														</div>
													</li>
												</ul></td>
											<th style="vertical-align: middle;"><div align="center">
													<input type="button" value="선택" onclick="location.href='sdu_reserv.jsp'">
												</div></th>
										</tr>

										<tr class="odd gradeX">
											<td class="center" style="vertical-align: middle;"><img alt="" class="img" src="assets/img/movie12.jpg"
												width="150px;"></td>
											<td><ul class="collapsible" data-collapsible="accordion">
													<li>
														<div
															class="collapsible-header blue-grey white-text">
															<i class="material-icons">theaters</i>기생충
														</div>
														
													</li>
													<li>
														<div
															class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">theaters</i>장르
														</div>
														<div class="collapsible-body">
															<p>액션, SF, 드라마</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">perm_identity</i>감독
														</div>
														<div class="collapsible-body">
															<p>봉준호</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text" >
															<i class="material-icons">assignment_ind</i>배우
														</div>
														<div class="collapsible-body">
															<p>박소담</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">voicemail</i>상영시간
														</div>
														<div class="collapsible-body">
															<p>131분</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">thumb_up</i>만족도
														</div>
														<div class="collapsible-body">
															<p>98% 좋아요</p>
														</div>
													</li>
												</ul></td>
											<th style="vertical-align: middle;"><div align="center">
													<input type="button" value="선택" onclick="location.href='sdu_reserv.jsp'">
												</div></th>
										</tr>
										<tr class="even gradeC">
											<td class="center" style="vertical-align: middle;"><img alt="" class="img" src="assets/img/movie7.jpg"
												width="150px;"></td>
											<td><ul class="collapsible" data-collapsible="accordion">
													<li>
														<div
															class="collapsible-header blue-grey white-text">
															<i class="material-icons">theaters</i>기생충
														</div>
														
													</li>
													<li>
														<div
															class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">theaters</i>장르
														</div>
														<div class="collapsible-body">
															<p>액션, SF, 드라마</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">perm_identity</i>감독
														</div>
														<div class="collapsible-body">
															<p>봉준호</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text" >
															<i class="material-icons">assignment_ind</i>배우
														</div>
														<div class="collapsible-body">
															<p>박소담</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">voicemail</i>상영시간
														</div>
														<div class="collapsible-body">
															<p>131분</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">thumb_up</i>만족도
														</div>
														<div class="collapsible-body">
															<p>98% 좋아요</p>
														</div>
													</li>
												</ul></td>
											<th style="vertical-align: middle;"><div align="center">
													<input type="button" value="선택" onclick="location.href='sdu_reserv.jsp'">
												</div></th>
										</tr>
										<tr class="odd gradeA">
											<td class="center" style="vertical-align: middle;"><img alt="" class="img" src="assets/img/movie8.jpg"
												width="150px;"></td>
											<td><ul class="collapsible" data-collapsible="accordion">
													<li>
														<div
															class="collapsible-header blue-grey white-text">
															<i class="material-icons">theaters</i>기생충
														</div>
														
													</li>
													<li>
														<div
															class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">theaters</i>장르
														</div>
														<div class="collapsible-body">
															<p>액션, SF, 드라마</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">perm_identity</i>감독
														</div>
														<div class="collapsible-body">
															<p>봉준호</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text" >
															<i class="material-icons">assignment_ind</i>배우
														</div>
														<div class="collapsible-body">
															<p>박소담</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">voicemail</i>상영시간
														</div>
														<div class="collapsible-body">
															<p>131분</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">thumb_up</i>만족도
														</div>
														<div class="collapsible-body">
															<p>98% 좋아요</p>
														</div>
													</li>
												</ul></td>
											<th style="vertical-align: middle;"><div align="center">
													<input type="button" value="선택" onclick="location.href='sdu_reserv.jsp'">
												</div></th>
										</tr>
										<tr class="even gradeA">
											<td class="center" style="vertical-align: middle;"><img alt="" class="img" src="assets/img/movie9.jpg"
												width="150px;"></td>
											<td><ul class="collapsible" data-collapsible="accordion">
													<li>
														<div
															class="collapsible-header blue-grey white-text">
															<i class="material-icons">theaters</i>기생충
														</div>
														
													</li>
													<li>
														<div
															class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">theaters</i>장르
														</div>
														<div class="collapsible-body">
															<p>액션, SF, 드라마</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">perm_identity</i>감독
														</div>
														<div class="collapsible-body">
															<p>봉준호</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text" >
															<i class="material-icons">assignment_ind</i>배우
														</div>
														<div class="collapsible-body">
															<p>박소담</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">voicemail</i>상영시간
														</div>
														<div class="collapsible-body">
															<p>131분</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">thumb_up</i>만족도
														</div>
														<div class="collapsible-body">
															<p>98% 좋아요</p>
														</div>
													</li>
												</ul></td>
											<th style="vertical-align: middle;"><div align="center">
													<input type="button" value="선택" onclick="location.href='sdu_reserv.jsp'">
												</div></th>
										</tr>
										<tr class="odd gradeA">
											<td class="center" style="vertical-align: middle;"><img alt="" class="img" src="assets/img/movie10.jpg"
												width="150px;"></td>
											<td><ul class="collapsible" data-collapsible="accordion">
													<li>
														<div
															class="collapsible-header blue-grey white-text">
															<i class="material-icons">theaters</i>기생충
														</div>
														
													</li>
													<li>
														<div
															class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">theaters</i>장르
														</div>
														<div class="collapsible-body">
															<p>액션, SF, 드라마</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">perm_identity</i>감독
														</div>
														<div class="collapsible-body">
															<p>봉준호</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text" >
															<i class="material-icons">assignment_ind</i>배우
														</div>
														<div class="collapsible-body">
															<p>박소담</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">voicemail</i>상영시간
														</div>
														<div class="collapsible-body">
															<p>131분</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">thumb_up</i>만족도
														</div>
														<div class="collapsible-body">
															<p>98% 좋아요</p>
														</div>
													</li>
												</ul></td>
											<th style="vertical-align: middle;"><div align="center">
													<input type="button" value="선택" onclick="location.href='sdu_reserv.jsp'">
												</div></th>
										</tr>
										<tr class="even gradeA">
											<td class="center" style="vertical-align: middle;"><img alt="" class="img" src="assets/img/movie11.jpg"
												width="150px;"></td>
											<td><ul class="collapsible" data-collapsible="accordion">
													<li>
														<div
															class="collapsible-header blue-grey white-text">
															<i class="material-icons">theaters</i>기생충
														</div>
														
													</li>
													<li>
														<div
															class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">theaters</i>장르
														</div>
														<div class="collapsible-body">
															<p>액션, SF, 드라마</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">perm_identity</i>감독
														</div>
														<div class="collapsible-body">
															<p>봉준호</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text" >
															<i class="material-icons">assignment_ind</i>배우
														</div>
														<div class="collapsible-body">
															<p>박소담</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">voicemail</i>상영시간
														</div>
														<div class="collapsible-body">
															<p>131분</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">thumb_up</i>만족도
														</div>
														<div class="collapsible-body">
															<p>98% 좋아요</p>
														</div>
													</li>
												</ul></td>
											<th style="vertical-align: middle;"><div align="center">
													<input type="button" value="선택" onclick="location.href='sdu_reserv.jsp'">
												</div></th>
										</tr>
										<tr class="even gradeA">
											<td class="center" style="vertical-align: middle;"><img alt="" class="img" src="assets/img/movie0.jpg"
												width="150px;"></td>
											<td><ul class="collapsible" data-collapsible="accordion">
													<li>
														<div
															class="collapsible-header blue-grey white-text">
															<i class="material-icons">theaters</i>기생충
														</div>
														
													</li>
													<li>
														<div
															class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">theaters</i>장르
														</div>
														<div class="collapsible-body">
															<p>액션, SF, 드라마</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">perm_identity</i>감독
														</div>
														<div class="collapsible-body">
															<p>봉준호</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text" >
															<i class="material-icons">assignment_ind</i>배우
														</div>
														<div class="collapsible-body">
															<p>박소담</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">voicemail</i>상영시간
														</div>
														<div class="collapsible-body">
															<p>131분</p>
														</div>
													</li>
													<li>
														<div class="collapsible-header blue-grey darken-4 white-text">
															<i class="material-icons">thumb_up</i>만족도
														</div>
														<div class="collapsible-body">
															<p>98% 좋아요</p>
														</div>
													</li>
												</ul></td>
											<th style="vertical-align: middle;"><div align="center">
													<input type="button" value="선택" onclick="location.href='sdu_reserv.jsp'">
												</div></th>
										</tr>

										<!-- ----------------------------------------------------------- -->

									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>




















				<!-- <div class="col-md-8 col-sm-4">
								<div class="card blue-grey darken-4">
									<div class="card-content white-text">
									  <div class="table-responsive">
									  
										<span class="card-title">기생충</span>
										<ul class="collapsible" data-collapsible="accordion">
											<li>
												<div class="collapsible-header blue-grey darken-4">
													<i class="material-icons">theaters</i>장르
												</div>
												<div class="collapsible-body">
													<p>액션, SF, 드라마</p>
												</div>
											</li>
											<li>
												<div class="collapsible-header blue-grey darken-4">
													<i class="material-icons">perm_identity</i>감독
												</div>
												<div class="collapsible-body">
													<p>봉준호</p>
												</div>
											</li>
											<li>
												<div class="collapsible-header blue-grey darken-4">
													<i class="material-icons">assignment_ind</i>배우
												</div>
												<div class="collapsible-body">
													<p>박소담</p>
												</div>
											</li>
											<li>
												<div class="collapsible-header blue-grey darken-4">
													<i class="material-icons">voicemail</i>상영시간
												</div>
												<div class="collapsible-body">
													<p>131분</p>
												</div>
											</li>
											<li>
												<div class="collapsible-header blue-grey darken-4">
													<i class="material-icons">thumb_up</i>만족도
												</div>
												<div class="collapsible-body">
													<p>98% 좋아요</p>
												</div>
											</li>
										</ul>



									</div>
									<div class="card-action center">
										<a href="sdu_reserv.jsp">예매하기</a>
									</div>
								</div>
							</div>
						</div> 
					</div>
					<br> <br> <br> -->


				<!-- =====================이 밑에는 걍 복붙=========================== -->

				<!-- 
					<div class="card blue-grey darken-4">

						<div class="row">
							<div class="col-md-4 col-sm-4">
								<div class="card blue-grey darken-4">
									<div class="card-content white-text">
										<span class="card-title">포스터</span> <img class="" width="100%"
											height="280px" alt="poster" src="assets/img/apple.jpg">
									</div>

								</div>
							</div>
							<div class="col-md-8 col-sm-4">
								<div class="card blue-grey darken-4">
									<div class="card-content white-text">
										<span class="card-title">기생충</span>
										<ul class="collapsible" data-collapsible="accordion">
											<li>
												<div class="collapsible-header blue-grey darken-4">
													<i class="material-icons">theaters</i>장르
												</div>
												<div class="collapsible-body">
													<p>액션, SF, 드라마</p>
												</div>
											</li>
											<li>
												<div class="collapsible-header blue-grey darken-4">
													<i class="material-icons">perm_identity</i>감독
												</div>
												<div class="collapsible-body">
													<p>봉준호</p>
												</div>
											</li>
											<li>
												<div class="collapsible-header blue-grey darken-4">
													<i class="material-icons">assignment_ind</i>배우
												</div>
												<div class="collapsible-body">
													<p>박소담</p>
												</div>
											</li>
											<li>
												<div class="collapsible-header blue-grey darken-4">
													<i class="material-icons">voicemail</i>상영시간
												</div>
												<div class="collapsible-body">
													<p>131분</p>
												</div>
											</li>
											<li>
												<div class="collapsible-header blue-grey darken-4">
													<i class="material-icons">thumb_up</i>만족도
												</div>
												<div class="collapsible-body">
													<p>98% 좋아요</p>
												</div>
											</li>
										</ul>



									</div>
									<div class="card-action center">
										<a href="sdu_reserv.jsp">예매하기</a>
									</div>
								</div>
							</div>
						</div>
					</div>

					<br> <br> <br>

					<div class="card blue-grey darken-4">

						<div class="row">
							<div class="col-md-4 col-sm-4">
								<div class="card blue-grey darken-4">
									<div class="card-content white-text">
										<span class="card-title">포스터</span> <img class="" width="100%"
											height="280px" alt="poster" src="assets/img/cat.jpg">
									</div>

								</div>
							</div>
							<div class="col-md-8 col-sm-4">
								<div class="card blue-grey darken-4">
									<div class="card-content white-text">
										<span class="card-title">기생충</span>
										<ul class="collapsible" data-collapsible="accordion">
											<li>
												<div class="collapsible-header blue-grey darken-4">
													<i class="material-icons">theaters</i>장르
												</div>
												<div class="collapsible-body">
													<p>액션, SF, 드라마</p>
												</div>
											</li>
											<li>
												<div class="collapsible-header blue-grey darken-4">
													<i class="material-icons">perm_identity</i>감독
												</div>
												<div class="collapsible-body">
													<p>봉준호</p>
												</div>
											</li>
											<li>
												<div class="collapsible-header blue-grey darken-4">
													<i class="material-icons">assignment_ind</i>배우
												</div>
												<div class="collapsible-body">
													<p>박소담</p>
												</div>
											</li>
											<li>
												<div class="collapsible-header blue-grey darken-4">
													<i class="material-icons">voicemail</i>상영시간
												</div>
												<div class="collapsible-body">
													<p>131분</p>
												</div>
											</li>
											<li>
												<div class="collapsible-header blue-grey darken-4">
													<i class="material-icons">thumb_up</i>만족도
												</div>
												<div class="collapsible-body">
													<p>98% 좋아요</p>
												</div>
											</li>
										</ul>



									</div>
									<div class="card-action center">
										<a href="sdu_reserv.jsp">예매하기</a>
									</div>
								</div>
							</div>
						</div>
					</div> -->

			</div>
		</div>
		<footer>
			<div class="center">

				<br> <br> <br> <br> <br> <br>
				<%@include file="sdu_footer.jsp"%>
			</div>
		</footer>
	</div>
	<!-- </div> -->
	<!-- /. PAGE INNER  -->


	<!-- /. PAGE WRAPPER  -->

	<!-- 
	</div> -->
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
	<!-- DATA TABLE SCRIPTS -->
	<script src="assets/js/dataTables/jquery.dataTables.js"></script>
	<script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
	<script>
		$(document).ready(function() {
			$('#dataTables-example').dataTable();
		});
	</script>
	<!-- Custom Js -->
	<script src="assets/js/custom-scripts.js"></script>
</body>

</html>