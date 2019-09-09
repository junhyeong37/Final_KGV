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

.top-navbar{
 	top:0;
}
</style>


<script type="text/javascript">
$( '.top' ).click( function() {
   $( 'html, body' ).animate( { scrollTop : 0 }, 400 );
   return false;
} );
</script>




</head>

<body>
	<div id="wrapper">

		<%
			// 현재 로그인된 아이디가 없다면 (= session에 저장된 id가 없다면)
			if (session.getAttribute("ulist") == null) {
		%>
<!-- <script>
alert("로그인에 실패하였습니다.")
history.go(-1);
</script> -->
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
			<li><a href="Logout.do"><i class="fa fa-user fa-fw"></i>
					로그아웃</a></li>
			<li><a href="Mypage_test.do"><i class="fa fa-gear fa-fw"></i>
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



					<%-- <c:set var="id" value="admin" />

					<c:if test="${id eq 'admin'}">
						<li><a href="sdu_admin_movie_insert.jsp"
							class="waves-effect waves-dark"><i class="fa fa-folder"></i>
								관리자 영화삽입1</a></li>
					</c:if> --%>


					<%-- <c:forEach items="${ulist }" var="val" varStatus="status">
					
					 	<c:if test="${val.user_id eq 'admin }">
					 		<li><a href="sdu_admin_movie_insert.jsp"
							class="waves-effect waves-dark"><i class="fa fa-folder"></i>
								관리자 영화삽입123</a></li>
					 	</c:if>
					 	
					</c:forEach> --%>





					<%-- <li><c:forEach items="${ulist }" var="val" varStatus="status">
						<a class="dropdown-button waves-effect waves-dark" href="#!"
							data-activates="dropdown1"> <i class="fa fa-user fa-fw"></i>
							<b> ${val.user_name }</b> <i class="material-icons right">arrow_drop_down</i></a>
					</c:forEach></li> --%>














				</ul>

			</div>

		</nav>
		<!-- /. NAV SIDE  -->

		<div id="page-wrapper">
			<!-- <div class="col-md-1"></div> -->
			<div class="col-md-12 col-sm-12 col-xs-12">
				<br> <br>
				<div class="card">
					<jsp:include page="Slide.jsp"></jsp:include></div>
				<!--   <div class="positionBtn">
                        <button id="prev"><span>PREV</span></button>
                        <button id="next"><span>NEXT</span></button>
                    </div> -->

			</div>
			<!-- <br> <br> <br> <br> <br>  -->





			<div id="page-inner" style="background-color: white;">
				<div class="row">
					<div class="card col-md-12">
						<div class="col-md-8 col-sm-12 col-xs-12">
							<div class="card">
								<div class="card-action">
									<b>이달의 상영작</b>
								</div>
								<div class="card-image">
									<div class="video">
										<iframe width="80%" height="90%"
											src="https://www.youtube.com/embed/A__FOXFNemU"
											frameborder="0"> </iframe>

									</div>
								</div>


							</div>

						</div>

						<div class="col-md-4 col-sm-12 col-xs-12">
							<div class="card">
								<div class="card-action">
									<a href="MovieSearchData.do?movie_photo=assets/img/movie0.jpg"><img
										src="assets/img/movie0.jpg" style="width: 100%; margin: auto;"
										data-src="" alt="Third slide"> </a>
									<!-- <img src="assets/img/movie0.jpg" width="100%"
                           > -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>



			<div id="page-inner" style="background-color: white;">
				<div class="row">
					<div class="card col-md-12" style="background-color: #0a0a0a;">
						<div class="col-md-2"></div>
						<div class="col-md-8 col-sm-12 col-xs-12">
							<div class="card">
								<jsp:include page="MoviePopup.jsp"></jsp:include>


							</div>

						</div>

					</div>
				</div>
			</div>


			<div id="page-inner" style="background-color: white;">
				<div class="row">
					<div class="col-md-12" style="background-color: white;">
						<div class="col-md-2"></div>
						<div class="col-md-8 col-sm-12 col-xs-12">

							<h3>
								<strong>이벤트</strong>
							</h3>
							<br> <img alt="" src="assets/img/event2.jpg"
								style="width: 100%; height: 100%">




						</div>

					</div>
				</div>
			</div>
			<!-- 
         <div class="gong"></div>
 -->

			<div id="page-inner"
				style="background-color: white; padding-left: 15px; padding-right: 15px;">
				<div class="row">
					<div class="col-md-12"
						style="padding-left: 0px; padding-right: 0px;">


						<div class="card"
							style="text-align: center; background-color: #005cb9;">
							<a href="https://www.hyundaicard.com/cpb/ev/CPBEV0101_01.hc">
								<img alt="" src="assets/img/event.jpg"
								style="width: 50%; height: 100%">
							</a>
						</div>




					</div>
					<!-- <div class="col-md-4 col-sm-12 col-xs-12">
                  <div class="card">
                     <div class="card-action">
                        <b>게시판 상영작</b> <img src="assets/img/movie0.jpg" width="100%"
                           height="90%">
                     </div>
                  </div>
               </div> -->
				</div>




				<div id="footer">
					<footer>
						<div class="center">
							<br> <br> <br>
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