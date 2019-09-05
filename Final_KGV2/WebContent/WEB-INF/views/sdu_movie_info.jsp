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
.card {
	border: 0;
}
</style>


<SCRIPT type="text/javascript"> 

function mediaWin(img){ 
winW=840;//새창의 너비 
winH=470;//새창의 높이 
stringa="width="+winW+",height="+winH; 
popup=window.open("","my",stringa); 
popup.document.open(); 
popup.document.write("<HTML><HEAD>"); 
popup.document.write("<TITLE>예고편</TITLE>"); 
popup.document.write("<c:if test='${not empty mlist }'><c:forEach var='movie' items='${mlist }' varStatus='status'><embed SRC='${movie.movie_preview}' style=width:100%;height:450px;></embed>"); 
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

		<div id="page-wrapper">



<c:if test="${not empty mlist }">
											<c:forEach var="movie" items="${mlist }" varStatus="status">

			<div id="page-inner">
			
			<div id="page-inner" style="background-color: black;">
				<div class="row" style="margin-bottom: 0px;">
				<div class="card col-md-12" style="background-color: black;" >
				
				<div class="col-md-12">
				
				
<div id="myCarousel" class="carousel slide" data-ride="carousel" style="height: 100%"> 
	
	<!--페이지-->
	
	<ol class="carousel-indicators" style="position: sticky;">
	<!-- 수정 전 slide 09.04 -->
		<!-- <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li> -->
		
		
	
		<li data-target="#myCarousel" data-slide-to="0" class="active" style="visibility: hidden; float: left;">
		<img alt="" class="imghidden" src="${movie.movie_photo1 }" style="width: 100px;visibility: visible; float: right; margin-top: 650px;"></li>
		<li data-target="#myCarousel" data-slide-to="1" style="visibility: hidden; float: left; padding-left: 100px;">
		<img alt="" class="imghidden" src="${movie.movie_photo2 }" style="width: 100px;visibility: visible; float: right; margin-top: 650px;"></li>
		<li data-target="#myCarousel" data-slide-to="2" style="visibility: hidden; float: left; padding-left: 100px;">
		<img alt="" class="imghidden" src="${movie.movie_photo3 }" style="width: 100px;visibility: visible; float: right; margin-top: 650px;" ></li>
		<li data-target="#myCarousel" data-slide-to="3" style="visibility: hidden; float: left; padding-left: 100px;">
		<img alt="" class="imghidden" src="${movie.movie_photo4 }" style="width: 100px;visibility: visible; float: right; margin-top: 650px;" ></li>
		<li data-target="#myCarousel" data-slide-to="4" style="visibility: hidden; float: left; padding-left: 100px;">
		<img alt="" class="imghidden" src="${movie.movie_photo5 }" style="width: 100px;visibility: visible; float: right; margin-top: 650px;" ></li>
	</ol>
	
	<!--페이지-->

	<div class="carousel-inner" style="height: 100%; background-color: #0a0a0a;">
		<!--슬라이드1--> 
		<div class="item active kgvsm3"> 
		
			<table class="kgvsm2"><tbody>
			<tr><td height="20px;"></tr><tr>
		<td width="20%"></td>
		<!-- <td width="10"><h1>상  영  작</h1></td> -->
		<td style="text-align: center;">
		
			<!-- <A HREF="javascript:mediaWin('a.asx')"> -->
			<!-- <a href="MovieSearchData.do?movie_photo=assets/img/movie0.jpg"> -->
			<div class="video">
									<iframe width="80%" height="90%"
										src="${movie.movie_preview }"	frameborder="0"> </iframe>

								</div>
			<!-- <img src="assets/img/kim9.jpg" class="img-mobile" style="margin:auto;" data-src="" alt="Second slide"> -->
			
			</td>
			
			<td width="20%"></td></tr>
			<tr><td height="100px;"></td></tr>

			</tbody>
			</table>
		
		</div>
		
		
		<div class="item kgvsm3"> 
		
			<table class="kgvsm2"><tbody>
			<tr><td height="20px;"></tr><tr>
		<td width="20%"></td>
		<!-- <td width="10"><h1>상  영  작</h1></td> -->
		<td style="text-align: center;">
		
			<!-- <a href="MovieSearchData.do?movie_photo=assets/img/movie0.jpg"> -->
			<img src="${movie.movie_photo2 }" class="img-mobile" style="margin:auto;" data-src="" alt="Second slide">
			
			</td>
			
			<td width="20%"></td></tr>
			<tr><td height="100px;"></td></tr>

			</tbody>
			</table>
		
		</div>
		
		
		<div class="item kgvsm3"> 
		
			<table class="kgvsm2"><tbody>
			<tr><td height="20px;"></tr><tr>
		<td width="20%"></td>
		<!-- <td width="10"><h1>상  영  작</h1></td> -->
		<td style="text-align: center;">
		
			
			<img src="${movie.movie_photo3 }" class="img-mobile" style="margin:auto;" data-src="" alt="Second slide">
			
			</td>
			
			<td width="20%"></td></tr>
			<tr><td height="100px;"></td></tr>

			</tbody>
			</table>
		
		</div>
		
		
		<div class="item kgvsm3"> 
		
			<table class="kgvsm2"><tbody>
			<tr><td height="20px;"></tr><tr>
		<td width="20%"></td>
		<!-- <td width="10"><h1>상  영  작</h1></td> -->
		<td style="text-align: center;">
		
		
			<img src="${movie.movie_photo4 }" class="img-mobile" style="margin:auto;" data-src="" alt="Second slide">
			
			</td>
			
			<td width="20%"></td></tr>
			<tr><td height="100px;"></td></tr>

			</tbody>
			</table>
		
		</div>
		
		
		<div class="item kgvsm3"> 
		
			<table class="kgvsm2"><tbody>
			<tr><td height="20px;"></tr><tr>
		<td width="20%"></td>
		<!-- <td width="10"><h1>상  영  작</h1></td> -->
		<td style="text-align: center;">
		
			
			<img src="${movie.movie_photo5 }" class="img-mobile" style="margin:auto;" data-src="" alt="Second slide">
			
			</td>
			
			<td width="20%"></td></tr>
			<tr><td height="100px;"></td></tr>

			</tbody>
			</table>
		
		</div>

		
		
	</div>

	<a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> 
	<a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> 
</div>
				
				
				</div>
				
				
					<%-- <div class="col-md-6">
						<div class="card">
							<div class="card-image" style="background-color: black;">
								<div class="video" style="margin-bottom: 0px;">
									<iframe width="50%" height="60%"
										src="${movie.movie_preview }"	frameborder="0" > </iframe>
<!-- style="width: 70%; height: 70%;" -->
								</div>
							</div>


						</div>

					</div> --%>
					
					
				</div></div>
			</div>
			<div id="page-inner" style="padding-left: 0px; padding-right: 0px;">
				<div class="row">
                                           
					<div class="card col-md-12" style="text-align: center; padding-left: 0px; padding-right: 0px;">

						
						<div class="col-md-4" style="padding-left: 10px;padding-right: 10px;">
							
								<div class="card-action center" ></div>
								<div class="card-content" style="padding-left: 0px;padding-right: 0px;">
									<img class="mobileimg" height="495px" alt="poster" src="${movie.movie_photo }"></a>


									<div class="clearBoth">
										<br />
									</div>

								</div>
							</div>
							<div class="col-md-2"></div>
							<div class="col-md-6">
							<div class="card">
								<div class="card-action center"></div>
								<div class="card-content">


									<div class="alert alert-success col-md-12">
										<table>
											<tr>
												<td><strong>만족도</strong></td>
												<td class="right">98%</td>
											</tr>
										</table>

									</div>

									<div class="alert alert-info col-md-12">
										<table>
											<tr>
												<td><strong>영화등급</strong></td>
												<td class="right"><i class="material-icons prefix">account_circle</i></td>
											</tr>
										</table>

									</div>

									<div class="alert alert-success col-md-12">
										<table>
											<tr>
												<td><strong>장르</strong></td>
												<td class="right">${movie.movie_genre }</td>
											</tr>
										</table>

									</div>

									<div class="alert alert-info col-md-12">
										<table>
											<tr>
												<td><strong>감독</strong></td>
												<td class="right">${movie.movie_director }</td>
											</tr>
										</table>

									</div>


									<div class="alert alert-success col-md-12">
										<table>
											<tr>
												<td><strong>배우</strong></td>
												<td class="right">${movie.movie_actor }</td>
											</tr>
										</table>

									</div>

									<div class="alert alert-info col-md-12">
										<table>
											<tr>
												<td><strong>상영시간</strong></td>
												<td class="right">${movie.movie_runtime }분</td>
											</tr>
										</table>

									</div>

									<div class="alert alert-success col-md-12">
										<table>
											<tr>
												<td><strong>개봉일</strong></td>
												<td class="right">${movie.movie_openday }</td>
											</tr>
										</table>

									</div>

									<div class="clearBoth">
										<br />
									</div>

								</div>
							</div>


						</div>
 


						</div>
						

						

						<div class="col-md-12">
							<div class="card">
								<div class="card-action center"></div>
								<div class="card-content">


									<div class="alert alert-success col-md-12">
										<strong>줄거리</strong> <br> ${movie.movie_content}
									</div>


									<div class="clearBoth">
										<br />
									</div>

								</div>
							</div>
						</div>



					</div>
				</div></div>
</c:forEach></c:if>

				<div class="center">
					<a
						class="waves-effect waves-light btn blue-grey darken-4 white-tex"
						href="sdu_reserv.jsp"> 예매하기 </a>
						
				<!-- 	<a class="waves-effect waves-light btn blue-grey darken-4 white-tex"
					href="sdu_review_input.jsp"> 리뷰 작성 하기 </a> 	 -->

				</div>

			<%-- 	<br> <br> <br>
				<br>

				<div class="col-md-6">
					<%@include file="sdu_review_output.jsp"%>
				</div>
				<div class="col-md-6">
					<%@include file="sdu_review_output.jsp"%>
				</div> --%>





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