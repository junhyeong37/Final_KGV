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
			<li><a href="sdu_login.jsp"><i class="fa fa-user fa-fw"></i>
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
							<li><a href="MovieAllData.do">영화검색</a></li>
							
						</ul></li>
					<li><a href="sdu_content.jsp" class="waves-effect waves-dark"><i
							class="fa fa-desktop"></i> 고객센터</a></li>

				
				</ul>

			</div>

		</nav>
		<!-- /. NAV SIDE  -->

		
		
		
		<!-- 삭제지점 -->
		<div id="page-wrapper" style="height: 2200px;">

			<div class="col-md-12">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<div id="page-inner"
						style="padding-left: 0px; padding-right: 0px; padding-bottom: 0px;">
						<div class="header">
							<h1 class="page-header">영화검색 & 영화리스트</h1>

						</div>
					</div>
				</div>





				<div class="col-md-2"></div>
				<div class="col-md-8" style="padding-left: 0px; padding-right: 0px;">

					<div class="card">

						<div class="card-content" style="text-align: center;">
							<div class="table-responsive">



								<table class="table table-striped table-bordered table-hover"
									id="dataTables-example">

									<thead>
										<tr>
											<th width="30%;"><p style="cursor: pointer;">
													<font color="red">개봉일순</font>
												</p></th>
											<th width="60%" style="border-right-color: white;"><p
													style="cursor: pointer;">
													<font color="red">가나다순</font>
												</p></th>
											<th width="10%"></th>
										</tr>
									</thead>
									<tbody>
										<!-- 만약 컨트롤 단에서 리스트를 제대로 호출해 온다는 가정하에... -->
										<c:if test="${not empty movielist }">
											<c:forEach var="movie" items="${movielist }"
												varStatus="status">
												<tr class="odd gradeX">
													<td class="center"
														style="border-right-color: white; border-left-color: white; vertical-align: middle;">
														<a
														href="MovieSearchData.do?movie_photo=${movie.movie_photo }"><img
															alt="" class="img" src="${movie.movie_photo }"
															width="150px;"></a>
													</td>
													<td
														style="border-right-color: white; border-left-color: white;"><ul
															class="collapsible" data-collapsible="accordion">
															<li>
																<div class="collapsible-header blue-grey white-text">
																	<i class="material-icons">theaters</i>${movie.movie_name }
																</div>

															</li>
															<li>
																<div
																	class="collapsible-header blue-grey darken-4 white-text">
																	<i class="material-icons">theaters</i>장르
																</div>
																<div class="collapsible-body">
																	<p>${movie.movie_genre }</p>

																</div>
															</li>
															<li>
																<div
																	class="collapsible-header blue-grey darken-4 white-text">
																	<i class="material-icons">perm_identity</i>감독
																</div>
																<div class="collapsible-body">
																	<p>${movie.movie_director }</p>
																</div>
															</li>
															<li>
																<div
																	class="collapsible-header blue-grey darken-4 white-text">
																	<i class="material-icons">assignment_ind</i>배우
																</div>
																<div class="collapsible-body">
																	<p>${movie.movie_actor }</p>
																</div>
															</li>
															<li>
																<div
																	class="collapsible-header blue-grey darken-4 white-text">
																	<i class="material-icons">voicemail</i>상영시간
																</div>
																<div class="collapsible-body">
																	<p>${movie.movie_runtime }분</p>
																</div>
															</li>
															<li>
																<div
																	class="collapsible-header blue-grey darken-4 white-text">
																	<i class="material-icons">thumb_up</i>만족도
																</div>
																<div class="collapsible-body">
																	<p>98% 좋아요</p>
																</div>
															</li>
														</ul></td>
													<th
														style="border-right-color: white; border-left-color: white; vertical-align: middle;"><div
															align="center">
															<input type="button" value="선택"
																onclick="location.href='sdu_reserv.jsp'">
														</div></th>
												</tr>
											</c:forEach>
										</c:if>



										<!-- ----------------------------------------------------------- -->

									</tbody>
								</table>
							</div>
						</div>
					</div>

					<footer>
						<div class="center">

							<br> <br> <br> <br> <br> <br>
							<%@include file="sdu_footer.jsp"%>
						</div>
					</footer>
				</div>


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