<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

 <link rel="stylesheet" href="assets/css/slide.css?after" type="text/css" />
   <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet" />
   <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
   <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>


<style>

.top-navbar{
 	top:0;
}


.card {
	border: 0;
}

label {
	visibility: hidden;
}

div.dataTables_filter {
	width: 0px;
	height: 0px;
}

tbody.tdsizesm1>tr>td {
	
}

@media ( max-width :768px) {
	.col-md-2 {
		width: 15%;
	}
	.imgswap {wi
		
	}
}
</style>

<SCRIPT type="text/javascript">
	function mediaWin(img) {
		winW = 840;//새창의 너비 
		winH = 470;//새창의 높이 
		stringa = "width=" + winW + ",height=" + winH;
		popup = window.open("", "my", stringa);
		popup.document.open();
		popup.document.write("<HTML><HEAD>");
		popup.document.write("<TITLE>예고편</TITLE>");
		popup.document
				.write("<c:if test='${not empty mlist }'><c:forEach var='movie' items='${mlist }' varStatus='status'><embed SRC='${movie.movie_preview}' style=width:100%;height:450px;></embed>");
		popup.document.write("</c:forEach></c:if>")
		/* popup.document.write("</HEAD><BODY  oncontextmenu='return false' onselectstart='return false' ondragstart='return false'>"); 
		 popup.document.write("<embed SRC=https://www.youtube.com/embed/6WQNr2wYDRA style=width:100%;height:450px;></embed>");  */
		/* popup.document.write("<HR><INPUT TYPE='button' VALUE='창닫기' " + 
		 "onClick='window.close()'>");  */
		popup.document.write("</CENTER>");
		popup.document.write("</BODY></HTML>");
		popup.document.close();
	}
//  -->
</script>

<script type="text/javascript">
	function paragraph_onmouseover() {
		paragraph.innerText = "${movie.movie_actor}";
	}
</script>

<!-- 이미지hover  <style> 
.imgswap img:last-child{display:none} 
.imgswap:hover img:first-child{display:none}
.imgswap:hover img:last-child{display:inline-block}
  </style> -->
<style type="text/css">
@media ( max-width :768px) {
	.actorsize {
		width: 20%;
	}
}
</style>

</head>

<body>
	<c:if test="${not empty mlist }">
		<c:forEach var="movie" items="${mlist }" varStatus="status">
			<div id="wrapper">
			
			<%
			// 현재 로그인된 아이디가 없다면 (= session에 저장된 id가 없다면)
			if (session.getAttribute("ulist") == null) {
		%>
			
				<nav class="navbar navbar-default top-navbar" role="navigation">
					<div class="navbar-header">
						<button type="button"
							class="navbar-toggle waves-effect waves-dark"
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
					<li><a href="sdu_membership.jsp"><i
							class="fa fa-gear fa-fw"></i> 회원가입</a></li>
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

							<li><a class="waves-effect waves-dark"
								href="sdu_index_navbar.jsp"><i class="fa fa-dashboard"></i>
									메인</a></li>
							<!-- <li>
                        <a href="sdu_movie.jsp" class="waves-effect waves-dark"><i class="fa fa-desktop"></i> 영화</a>
                    </li> -->

							<li><a href="MovieAllData2.do" class="waves-effect waves-dark"><i
									class="fa fa-bar-chart-o"></i> 예매</a></li>

							<li><a href="#" class="active-menu waves-effect waves-dark"><i
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



						</ul>

					</div>

				</nav>
				<!-- /. NAV SIDE  -->

				<div id="page-wrapper">



					<%-- <c:if test="${not empty mlist }">
                                 <c:forEach var="movie" items="${mlist }" varStatus="status">
 --%>
					<!-- <div id="page-inner"> -->

					<div id="page-inner" style="background-color: black;">
						<div class="row" style="margin-bottom: 0px;">
							<div class="card col-md-12" style="background-color: black;">

								<div class="col-md-12">


									<div id="myCarousel" class="carousel slide"
										data-ride="carousel" style="height: 100%">

										<!--페이지-->

										<ol class="carousel-indicators" style="position: sticky;">
											<!-- 수정 전 slide 09.04 -->
											<!-- <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li> -->



											<li data-target="#myCarousel" data-slide-to="0"
												class="active" style="visibility: hidden; float: left;">
												<img alt="" class="imghidden" src="${movie.movie_photo2 }"
												style="width: 100px; visibility: visible; float: right; margin-top: 650px;">
											</li>
											<li data-target="#myCarousel" data-slide-to="1"
												style="visibility: hidden; float: left; padding-left: 100px;">
												<img alt="" class="imghidden" src="${movie.movie_photo3 }"
												style="width: 100px; visibility: visible; float: right; margin-top: 650px;">
											</li>
											<li data-target="#myCarousel" data-slide-to="2"
												style="visibility: hidden; float: left; padding-left: 100px;">
												<img alt="" class="imghidden" src="${movie.movie_photo4 }"
												style="width: 100px; visibility: visible; float: right; margin-top: 650px;">
											</li>
											<li data-target="#myCarousel" data-slide-to="3"
												style="visibility: hidden; float: left; padding-left: 100px;">
												<img alt="" class="imghidden" src="${movie.movie_photo5 }"
												style="width: 100px; visibility: visible; float: right; margin-top: 650px;">
											</li>
											<li data-target="#myCarousel" data-slide-to="4"
												style="visibility: hidden; float: left; padding-left: 100px;">
												<img alt="" class="imghidden" src="${movie.movie_photo6 }"
												style="width: 100px; visibility: visible; float: right; margin-top: 650px;">
											</li>
										</ol>

										<!--페이지-->

										<div class="carousel-inner"
											style="height: 100%; background-color: #0a0a0a;">
											<!--슬라이드1-->
											<div class="item active kgvsm3">

												<table class="kgvsm2">
													<tbody>
														<tr>
															<td height="20px;">
														</tr>
														<tr>
															<td width="20%"></td>
															<!-- <td width="10"><h1>상  영  작</h1></td> -->
															<td style="text-align: center;">
																<!-- <A HREF="javascript:mediaWin('a.asx')"> --> <!-- <a href="MovieSearchData.do?movie_photo=assets/img/movie0.jpg"> -->
																<div class="video">
																	<iframe width="80%" height="90%"
																		src="${movie.movie_preview }" frameborder="0">
																	</iframe>

																</div> <!-- <img src="assets/img/kim9.jpg" class="img-mobile" style="margin:auto;" data-src="" alt="Second slide"> -->

															</td>

															<td width="20%"></td>
														</tr>
														<tr>
															<td height="100px;"></td>
														</tr>

													</tbody>
												</table>

											</div>


											<div class="item kgvsm3">

												<table class="kgvsm2">
													<tbody>
														<tr>
															<td height="20px;">
														</tr>
														<tr>
															<td width="20%"></td>
															<!-- <td width="10"><h1>상  영  작</h1></td> -->
															<td style="text-align: center;">
																<!-- <a href="MovieSearchData.do?movie_photo=assets/img/movie0.jpg"> -->
																<img src="${movie.movie_photo3 }" class="img-mobile"
																style="margin: auto;" data-src="" alt="Second slide">

															</td>

															<td width="20%"></td>
														</tr>
														<tr>
															<td height="100px;"></td>
														</tr>

													</tbody>
												</table>

											</div>


											<div class="item kgvsm3">

												<table class="kgvsm2">
													<tbody>
														<tr>
															<td height="20px;">
														</tr>
														<tr>
															<td width="20%"></td>
															<!-- <td width="10"><h1>상  영  작</h1></td> -->
															<td style="text-align: center;"><img
																src="${movie.movie_photo4 }" class="img-mobile"
																style="margin: auto;" data-src="" alt="Second slide">

															</td>

															<td width="20%"></td>
														</tr>
														<tr>
															<td height="100px;"></td>
														</tr>

													</tbody>
												</table>

											</div>


											<div class="item kgvsm3">

												<table class="kgvsm2">
													<tbody>
														<tr>
															<td height="20px;">
														</tr>
														<tr>
															<td width="20%"></td>
															<!-- <td width="10"><h1>상  영  작</h1></td> -->
															<td style="text-align: center;"><img
																src="${movie.movie_photo5 }" class="img-mobile"
																style="margin: auto;" data-src="" alt="Second slide">

															</td>

															<td width="20%"></td>
														</tr>
														<tr>
															<td height="100px;"></td>
														</tr>

													</tbody>
												</table>

											</div>


											<div class="item kgvsm3">

												<table class="kgvsm2">
													<tbody>
														<tr>
															<td height="20px;">
														</tr>
														<tr>
															<td width="20%"></td>
															<!-- <td width="10"><h1>상  영  작</h1></td> -->
															<td style="text-align: center;"><img
																src="${movie.movie_photo6 }" class="img-mobile"
																style="margin: auto;" data-src="" alt="Second slide">

															</td>

															<td width="20%"></td>
														</tr>
														<tr>
															<td height="100px;"></td>
														</tr>

													</tbody>
												</table>

											</div>



										</div>

										<a class="left carousel-control" href="#myCarousel"
											data-slide="prev"><span
											class="glyphicon glyphicon-chevron-left"></span></a> <a
											class="right carousel-control" href="#myCarousel"
											data-slide="next"><span
											class="glyphicon glyphicon-chevron-right"></span></a>
									</div>


								</div>




							</div>
						</div>
					</div>

					<div id="page-inner">
						<div class="row">
							<div class="col-md-1"></div>
							<div class="card col-md-10"
								style="background-image: url('assets/img/backcolor.jpg'); text-align: center; padding-left: 0px; padding-right: 0px; margin-bottom: 0px;">


								<div class="col-md-5"
									style="padding-left: 0px; padding-right: 0px;">

									<div class="card-action center"></div>
									<div class="card-content"
										style="padding-left: 0px; padding-right: 0px;">
										<img class="mobileimg" height="495px" alt="poster"
											src="${movie.movie_photo }"> <br>
										<br>
										<div>
											<a
												class="waves-effect waves-light btn blue-grey darken-4 white-tex"
												href="sdu_reserv.jsp"> 예매하기 </a>
										</div>

										<div class="clearBoth">
											<br />
										</div>

									</div>
								</div>
								<!-- <div class="col-md-1"></div> -->

								<div class="col-md-7">
									<!-- <div class="card"> -->
									<div class="card-action center"></div>
									<div class="card-content" style="padding-top: 0px;">


										<div class="alert alert-success col-md-12 colorksm"
											style="background-color: #ffffff00; color: black; border-color: #ffffff00;">
											<table>
												<tr>
													<!-- <td><h1><strong style="font-size:larger;">유열의 음악앨범</strong></h1></td> -->
													<td><h1>
															<strong style="font-size: larger;">${movie.movie_name }</strong>
														</h1></td>
												</tr>
											</table>

										</div>

										<div class="alert alert-info col-md-8"
											style="background-color: #ffffff00; color: black; border-color: #ffffff00;">
											<table>
												<tr>
													<td style="font-size: medium;"><strong>영화등급</strong>&nbsp;&nbsp;${movie.movie_level}&nbsp;관람가</td>
												</tr>
											</table>

										</div>
										<div class="col-md-4"></div>
										<div class="alert alert-success col-md-8"
											style="background-color: #ffffff00; color: black; border-color: #ffffff00;">
											<table>
												<tr>
													<td style="font-size: medium;"><strong>장르</strong>&nbsp;&nbsp;${movie.movie_genre }</td>

												</tr>
											</table>

										</div>
										<div class="col-md-4"></div>
										<div class="alert alert-info col-md-8"
											style="background-color: #ffffff00; color: black; border-color: #ffffff00;">
											<table>
												<tr>
													<td style="font-size: medium;"><strong>감독</strong>&nbsp;&nbsp;${movie.movie_director }</td>
												</tr>
											</table>

										</div>
										<div class="col-md-4"></div>

										<div class="alert alert-success col-md-8"
											style="background-color: #ffffff00; color: black; border-color: #ffffff00;">
											<table>
												<tr>
													<td style="font-size: medium;"><strong>배우</strong>&nbsp;&nbsp;${movie.movie_actor }</td>
												</tr>
											</table>

										</div>
										<div class="col-md-4"></div>

										<div class="alert alert-info col-md-8"
											style="background-color: #ffffff00; color: black; border-color: #ffffff00;">
											<table>
												<tr>
													<td style="font-size: medium;"><strong>상영시간</strong>&nbsp;&nbsp;${movie.movie_runtime }</td>
												</tr>
											</table>

										</div>
										<div class="col-md-4"></div>

										<div class="alert alert-success col-md-8"
											style="background-color: #ffffff00; color: black; border-color: #ffffff00;">
											<table>
												<tr>
													<td style="font-size: medium;"><strong>개봉일</strong>&nbsp;&nbsp;${movie.movie_openday }</td>
												</tr>
											</table>

										</div>
										<div class="col-md-4"></div>

										<div class="clearBoth">
											<br />
										</div>

									</div>
									<!-- </div> -->


								</div>



							</div>

							<div class="col-md-1"></div>
						</div>

						<div class="row">
							<div class="col-md-12">
								<div class="col-md-1"></div>
								<div class="card col-md-10"
									style="margin-top: 0px; background-image: url('assets/img/backcolor.jpg');">

									<!-- <div class="card-action center"></div> -->
									<div class="card-content"
										style="background-color: #ffffff00; color: black; border-color: #ffffff00;">


										<strong style="font-size: larger;">줄거리</strong> <br>
										<br> ${movie.movie_content }

										<div class="clearBoth">
											<br />
										</div>

									</div>

								</div>
							</div>

							<!-- row end -->
						</div>
						<!-- <div id="page-inner" style="background-color: white; padding-left: 15px;padding-right: 15px;"> -->
						<div class="page-inner">
							<div class="row">
								<!-- <div class="card col-md-12" style="padding-left: 0px; padding-right: 0px;"> -->


								<div class="card col-md-12"
									style="text-align: center; background-color: #ebe7dc; padding-top: 20px; padding-bottom: 20px;">
									<strong style="font-size: larger;">출연배우</strong> <br>
									<br>
									<%-- <div class="col-md-2"></div>
                     <div class="imgswap col-md-2" style="text-align: center;">
                     <img alt="" src="${movie.movie_actor1 }">
                     <img alt="" src="${movie.movie_actor1 }" style="opacity: 0.5">
                     </div>
                     <div class="imgswap col-md-2" style="text-align: center;">
                     <img alt="" src="${movie.movie_actor2 }">
                     <img alt="" src="${movie.movie_actor2 }" style="opacity: 0.5">
                     </div>
                     <div class="imgswap col-md-2" style="text-align: center;">
                     <img alt="" src="${movie.movie_actor3 }">
                     <img alt="" src="${movie.movie_actor3 }" style="opacity: 0.5">
                     </div>
                     <div class="imgswap col-md-2" style="text-align: center;" style="opacity: 0.5">
                     <img alt="" src="${movie.movie_actor4 }">
                     <img alt="" src="${movie.movie_actor4 }" style="opacity: 0.5">
                     </div> --%>
									<img alt="" src="${movie.movie_photo7 }" class="actorsize">
									<img alt="" src="${movie.movie_photo8 }" class="actorsize">
									<img alt="" src="${movie.movie_photo9 }" class="actorsize">
									<img alt="" src="${movie.movie_photo10 }" class="actorsize">

									<!-- </div> -->

								</div>
							</div>

							<!-- page-inner end -->
							<!-- </div> -->








							<div class="row">
								<div class="card col-md-12"
									style="height: 200px; padding-top: 15px;">
									<div class="col-md-1"></div>
									<div class="col-md-10" style="">
										<p style="font-size: x-large; font-weight: bold;">영화 리뷰</p>
										<form action="">
											<textarea name="review_text"
												style="height: 100px; background-color: #f0f8ffc4;"></textarea>
											<input
												class="waves-effect waves-light btn blue-grey darken-4 white-tex"
												type="submit" value="작성">

										</form>
									</div>
									<div class="col-md-1"></div>
								</div>
								<div class="card col-md-12">
									<!-- Advanced Tables -->

									<div class="col-md-1"></div>
									<div class="col-md-10">

										<!--    <div class="card"> -->

										<div class="card-content"
											style="text-align: center; padding-left: 0px; padding-right: 0px;">
											<div class="table-responsive" style="height: 420px;">

												<table
													class="table table-striped table-bordered table-hover"
													id="dataTables-example">

													<thead>
														<tr>
															<th style="visibility: hidden;"></th>
															<th style="visibility: hidden;"></th>
															<th style="visibility: hidden;"></th>
														</tr>
													</thead>
													<tbody>
														<tr class="odd gradeX">
															<td style="width: 15%;">ID</td>
															<td>리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰</td>
															<td style="width: 20%;">작성일</td>
														</tr>
														<tr class="odd gradeX">
															<td>ID</td>
															<td>리뷰</td>
															<td>작성일</td>
														</tr>
														<tr class="odd gradeX">
															<td>ID</td>
															<td>리뷰</td>
															<td>작성일</td>
														</tr>
														<tr class="odd gradeX">
															<td>ID</td>
															<td>리뷰</td>
															<td>작성일</td>
														</tr>
														<tr class="odd gradeX">
															<td>ID</td>
															<td>리뷰</td>
															<td>작성일</td>
														</tr>
														<tr class="odd gradeX">
															<td>ID</td>
															<td>리뷰</td>
															<td>작성일</td>
														</tr>
														<tr class="odd gradeX">
															<td>ID</td>
															<td>리뷰</td>
															<td>작성일</td>
														</tr>
														<tr class="odd gradeX">
															<td>ID</td>
															<td>리뷰</td>
															<td>작성일</td>
														</tr>
														<tr class="odd gradeX">
															<td>ID</td>
															<td>리뷰</td>
															<td>작성일</td>
														</tr>
														<tr class="odd gradeX">
															<td>ID</td>
															<td>리뷰</td>
															<td>작성일</td>
														</tr>
														<tr class="odd gradeX">
															<td>ID</td>
															<td>리뷰</td>
															<td>작성일</td>
														</tr>
														<tr class="odd gradeX">
															<td>ID</td>
															<td>리뷰</td>
															<td>작성일</td>
														</tr>


													</tbody>
												</table>
											</div>
										</div>
									</div>
									<!-- </div> -->
									<div class="col-md-1"></div>
								</div>
							</div>
						</div>
					</div>






					<footer>
						<div class="center">

							<%@include file="sdu_footer.jsp"%>
						</div>
					</footer>
				</div>

				<!-- /. PAGE INNER  -->

				<!-- /. PAGE WRAPPER  -->


			</div>

		</c:forEach>
	</c:if>
	<!-- /. WRAPPER  -->
	<!-- JS Scripts-->
	<!-- jQuery Js -->

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