<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="org.codehaus.jackson.map.ObjectMapper"%>
<%@page
	import="kr.or.kobis.kobisopenapi.consumer.rest.KobisOpenAPIRestService"%>

<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Collection"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="net.sf.json.util.JSONBuilder"%>
<%@page import="net.sf.json.JSONArray"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
    
    
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"> 
<head>

<script
	src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
<script src="http://cdn.oesmith.co.uk/morris-0.4.1.min.js"></script>


    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>KGV</title> 
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="stylesheet" href="assets/materialize/css/materialize.min.css" media="screen,projection" />
    <!-- Bootstrap Styles-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="assets/js/Lightweight-Chart/cssCharts.css"> 
</head>
<style type="text/css">
.row .col.s3 {
    width: 50% !important;
    margin-left: auto;
    left: auto;
    right: auto;
}
a:link {
	color: black;
	text-decoration: none;
}

a:visited {
	color: black;
	text-decoration: none;
}

a:hover {
	color: blue;
	text-decoration: underline;
}
</style>
<style>
.movietext {
	width: 920px;
	font-size: 16px;
	font-weight: bold;
	padding-top:10px;
}

.row {
	
}

.tdWidth {
	width: 480px;
}

@media ( max-width :768px) {
	.row {
		display: none;
	}
	.header {
		padding-top: 30px;
	}
	.tdWidth {
		width: 45%;
	}
	.tableWidth {
		width: 100%;
	}
}

@media ( min-width :768px) {
	.row {
		display: yes;
	}
	.tableWidth {
		width: 1200px;
	}
}
</style>
<body>
    <div id="wrapper">
    
    <%
			// 현재 로그인된 아이디가 없다면 (= session에 저장된 id가 없다면)
			if (session.getAttribute("ulist") == null) {
		%>
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle waves-effect waves-dark" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand waves-effect waves-dark"
               href="sdu_index_navbar.jsp" style="padding-top: 7px; padding-bottom: 0px;">
               <img alt="" src="assets/img/KGVlogo.png" style="width: 50%;"></a>
		<div id="sideNav" href=""><i class="material-icons dp48">toc</i></div>
            </div>

            <ul class="nav navbar-top-links navbar-right"> 
				<!-- <li><a class="dropdown-button waves-effect waves-dark" href="#!" data-activates="dropdown4"><i class="fa fa-envelope fa-fw"></i> <i class="material-icons right">arrow_drop_down</i></a></li>				
				<li><a class="dropdown-button waves-effect waves-dark" href="#!" data-activates="dropdown3"><i class="fa fa-tasks fa-fw"></i> <i class="material-icons right">arrow_drop_down</i></a></li>
				<li><a class="dropdown-button waves-effect waves-dark" href="#!" data-activates="dropdown2"><i class="fa fa-bell fa-fw"></i> <i class="material-icons right">arrow_drop_down</i></a></li> -->
				<!--   <li><a class="dropdown-button waves-effect waves-dark" href="#!" data-activates="dropdown1"><i class="fa fa-user fa-fw"></i> <b>John Doe</b> <i class="material-icons right">arrow_drop_down</i></a></li> -->
				  <li><a class="dropdown-button waves-effect waves-dark" href="#!" data-activates="dropdown1"><i class="fa fa-user fa-fw"></i> <i class="material-icons right">arrow_drop_down</i></a></li>
            </ul>
        </nav>
		<!-- Dropdown Structure -->
<ul id="dropdown1" class="dropdown-content">
<li><a href="sdu_login.jsp"><i class="fa fa-user fa-fw"></i> 로그인</a>
</li>
<li><a href="sdu_membership.jsp"><i class="fa fa-gear fa-fw"></i> 회원가입</a>
</li> 
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
			<li><a href="sdu_membership.jsp"><i class="fa fa-gear fa-fw"></i>
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

                    <li>
                        <a class="waves-effect waves-dark" href="sdu_index_navbar.jsp"><i class="fa fa-dashboard"></i> 메인</a>
                    </li>
                    <!-- <li>
                        <a href="sdu_movie.jsp" class="waves-effect waves-dark"><i class="fa fa-desktop"></i> 영화</a>
                    </li> -->
                    
					<li>
                        <a href="MovieAllData2.do" class="waves-effect waves-dark"><i class="fa fa-bar-chart-o"></i> 예매</a>
                    </li>
                    
                    <li>
                        <a href="#" class="active-menu waves-effect waves-dark"><i class="fa fa-sitemap"></i> 영화<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="sdu_box_office.jsp">박스오피스 랭킹</a>
                            </li>
                            <li>
                                <a href="MovieAllData.do">영화검색</a>
                            </li>
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
                        </ul>
                    </li>
                    <li>
                        <a href="sdu_theater.jsp" class="waves-effect waves-dark"><i class="fa fa-desktop"></i> 영화관</a>
                    </li>
                    
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
				<h1 class="page-header">영화 랭킹</h1>


			</div>
		  <div id="page-inner">

				<%
					String targetDt = request.getParameter("targetDt") == null ? "20190904" : request.getParameter("targetDt");
					String itemPerPage = request.getParameter("itemPerPage") == null
							? "10"
							: request.getParameter("itemPerPage");
					String multiMovieYn = request.getParameter("multiMovieYn") == null
							? ""
							: request.getParameter("multiMovieYn");
					String repNationCd = request.getParameter("reNationCd") == null ? "" : request.getParameter("repNationCd");
					String wideAreaCd = request.getParameter("wideAreaCd") == null ? "" : request.getParameter("wideAreaCd");

					String key = "4e1acd6debf4047bbb3b289550466e22";

					KobisOpenAPIRestService service = new KobisOpenAPIRestService(key);

					String dailyResponse = service.getDailyBoxOffice(true, targetDt, itemPerPage, multiMovieYn, repNationCd,
							wideAreaCd);

					ObjectMapper mapper = new ObjectMapper();
					HashMap<String, Object> dailyResult = mapper.readValue(dailyResponse, HashMap.class);

					request.setAttribute("dailyResult", dailyResult);

					String codeResponse = service.getComCodeList(true, "0105000000");
					HashMap<String, Object> codeResult = mapper.readValue(codeResponse, HashMap.class);

					request.setAttribute("codeResult", codeResult);
				%>
				<script>
					var arMovie = new Array();
					var cnt = 0;
					var arAudi = new Array();
					var oldArAudi = new Array();
					var arSales = new Array();
					var oldArSales = new Array();
				</script>






				<table class="tableWidth">
					<td class="tdWidth">순위</td>
					<td class="tdWidth">영화명</td>

					<td>변동폭</td>

					</tr>
				</table>




				<hr align="left" style="width: 600px">
				<table class="tableWidth">
					<c:if
						test="${not empty dailyResult.boxOfficeResult.dailyBoxOfficeList}">
						<c:forEach
							items="${dailyResult.boxOfficeResult.dailyBoxOfficeList }"
							var="boxoffice">
							<script>
								arMovie[cnt] = '<c:out value="${boxoffice.movieNm }"/>';
								arMovie[cnt] = arMovie[cnt].replace(/&amp;/gi,
										'&');
								arAudi[cnt] = '<c:out value="${boxoffice.audiCnt }"/>';
								oldArAudi[cnt] = '<c:out value="${boxoffice.audiInten }"/>'
								arSales[cnt] = '<c:out value="${boxoffice.salesAmt }"/>';
								oldArSales[cnt] = '<c:out value="${boxoffice.salesInten }"/>';
								cnt = parseInt(cnt) + 1;
							</script>
							<tr>


								<td style="padding-top:10px;width: 50px; font-size: 20px; color: red"><c:out
										value="${boxoffice.rank }" /></td>
								<%
									
								%>
								<c:choose>
									<c:when test="${boxoffice.movieNm eq '분노의 질주: 홉스&쇼'}">
										<td class="movietext"><a href="MovieSearchData.do?movie_photo=assets/img/분노의 질주/1.jpg">${boxoffice.movieNm}</a></td>
									</c:when>
									<c:when test="${boxoffice.movieNm eq '	그것: 두 번째 이야기'}">
										<td class="movietext"><a href="MovieSearchData.do?movie_photo=assets/img/그것 두번째이야기/1.jpg">${boxoffice.movieNm}</a></td>
									</c:when>
									
									<c:otherwise>
										<td class="movietext"><c:out
												value="${boxoffice.movieNm }" /></td>

									</c:otherwise>




								</c:choose>

								<c:choose>
									<c:when test="${boxoffice.rankInten <0 }">
										<td width="16"><img style="width: 6px; height: 6"
											src="img/2.png"></td>
										<td><c:out value="${boxoffice.rankInten * -1 }" /></td>
									</c:when>
									<c:when test="${boxoffice.rankInten ==0 }">
										<td width="16"><img style="width: 6px; height: 6"
											src="img/3.png"></td>
										<td><c:out value="${boxoffice.rankInten * -1 }" /></td>
									</c:when>
									<c:otherwise>
										<td><img style="width: 6px; height: 6" src="img/1.png"></td>
										<td><c:out value="${boxoffice.rankInten }" /></td>
									</c:otherwise>

								</c:choose>


							</tr>





						</c:forEach>
					</c:if>
				</table>
				<br> <br>


				<script>
					jQuery(document).ready(function($) {
						Morris.Bar({
							element : 'bar-example2',
							data : [

							{
								y : arMovie[5],
								b : arAudi[5],
								a : arAudi[5] - oldArAudi[5]
							}, {
								y : arMovie[6],
								b : arAudi[6],
								a : arAudi[6] - oldArAudi[6]
							}, {
								y : arMovie[7],
								b : arAudi[7],
								a : arAudi[7] - oldArAudi[7]
							}, {
								y : arMovie[8],
								b : arAudi[8],
								a : arAudi[8] - oldArAudi[8]
							}, {
								y : arMovie[9],
								b : arAudi[9],
								a : arAudi[9] - oldArAudi[9]
							},

							],
							xkey : 'y',
							ykeys : [ 'a', 'b' ],
							labels : [ 'yesterday', 'today' ],
							gridTextWeight : 'bold',
							gridTextColor : 'black',
							gridTextSize : '11',

							barColors : [ '#e96562', '#414e63', '#A8E9DC' ],
							hideHover : 'auto',

						});
					});
					jQuery(document).ready(function($) {
						Morris.Bar({
							element : 'bar-example3',
							data : [

							{
								y : arMovie[5],
								b : arSales[5],
								a : arSales[5] - oldArSales[5]
							}, {
								y : arMovie[6],
								b : arSales[6],
								a : arSales[6] - oldArSales[6]
							}, {
								y : arMovie[7],
								b : arSales[7],
								a : arSales[7] - oldArSales[7]
							}, {
								y : arMovie[8],
								b : arSales[8],
								a : arSales[8] - oldArSales[8]
							}, {
								y : arMovie[9],
								b : arSales[9],
								a : arSales[9] - oldArSales[9]
							},

							],
							xkey : 'y',
							ykeys : [ 'a', 'b' ],
							labels : [ 'yesterday', 'today' ],
							gridTextWeight : 'bold',
							gridTextColor : 'black',
							gridTextSize : '11',

							barColors : [ '#e96562', '#414e63', '#A8E9DC' ],
							hideHover : 'auto',

						});
					});
					jQuery(document).ready(function($) {
						Morris.Bar({
							element : 'bar-example4',
							data : [

							{
								y : arMovie[0],
								b : arSales[0],
								a : arSales[0] - oldArSales[0]
							}, {
								y : arMovie[1],
								b : arSales[1],
								a : arSales[1] - oldArSales[1]
							}, {
								y : arMovie[2],
								b : arSales[2],
								a : arSales[2] - oldArSales[2]
							}, {
								y : arMovie[3],
								b : arSales[3],
								a : arSales[3] - oldArSales[3]
							}, {
								y : arMovie[4],
								b : arSales[4],
								a : arSales[4] - oldArSales[4]
							},

							],
							xkey : 'y',
							ykeys : [ 'a', 'b' ],
							labels : [ 'yesterday', 'today' ],
							gridTextWeight : 'bold',
							gridTextColor : 'black',
							gridTextSize : '11',

							barColors : [ '#e96562', '#414e63', '#A8E9DC' ],
							hideHover : 'auto',

						});
					});

					jQuery(document).ready(function($) {
						Morris.Bar({
							element : 'bar-example',
							data : [ {
								y : arMovie[0],
								b : arAudi[0],
								a : arAudi[0] - oldArAudi[0]
							}, {
								y : arMovie[1],
								b : arAudi[1],
								a : arAudi[1] - oldArAudi[1]
							}, {
								y : arMovie[2],
								b : arAudi[2],
								a : arAudi[2] - oldArAudi[2]
							}, {
								y : arMovie[3],
								b : arAudi[3],
								a : arAudi[3] - oldArAudi[3]
							}, {
								y : arMovie[4],
								b : arAudi[4],
								a : arAudi[4] - oldArAudi[4]
							}

							],
							xkey : 'y',
							ykeys : [ 'a', 'b' ],
							labels : [ 'yesterday', 'today' ],
							gridTextWeight : 'bold',
							gridTextColor : 'black',
							gridTextSize : '11',

							barColors : [

							'#e96562', '#414e63', '#A8E9DC' ],
							hideHover : 'auto',

						});
					});
					$('#area-chart').resize(function() {
						bar.redraw();
					});
				</script>


				<div class="row">

					<div class="col-md-6 col-sm-6">
						<div class="box">
							<div class="card-action"></div>
							<div class="card-content">
								<div class="col">
									<ul class="tabs">
										<li class="tab col s3 col-md-1"><a href="#test1">매출 순위</a></li>

										<li class="tab col s3"><a href="#test4">관객 순위</a></li>
									</ul>
								</div>
								<div class="clearBoth">
									<br />
								</div>
								<div id="test4" class="col s12">
									<div
										style="width: 970px; height: 300px; background-color: white; border: 2px solid black;"
										id="bar-example"></div>
									<br>
									<div
										style="width: 970px; height: 300px; background-color: white; border: 2px solid black;"
										id="bar-example2"></div>
								</div>

								<div id="test1" class="col s12">
									<div
										style="width: 970px; height: 300px; background-color: white; border: 2px solid black;"
										id="bar-example4"></div>
									<br>
									<div
										style="width: 970px; height: 300px; background-color: white; border: 2px solid black;"
										id="bar-example3"></div>
								</div>
								<div class="clearBoth">
									<br />
								</div>
							</div>
						</div>
					</div>
				</div>

				<footer>
					<div class="center">
					<br><br><br><br><br><br><br><br><br><br><br><br><br>
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