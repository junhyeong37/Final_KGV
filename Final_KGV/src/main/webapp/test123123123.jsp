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
<style type="text/css">
a:link {
	color: #333;
	text-decoration: none;
}

a:visited {
	color: #333;
	text-decoration: none;
}

a:hover {
	color: #333;
	text-decoration: underline;
}
</style>


<style>
.nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover
	{
	background-color: #f1f2f3;
}

.sidebar {
	width: 260;
	height: 1200;
	background-color: #1f2837;
	position: fixed;
}



.selec-ul li {
	float: left;
	margin: 6px 35px 0 0;
	color: #969696;
}

.select {
	margin-bottom: 10px;
}

.info {
	height: 400px;
	margin-left: 10px
}

.info-1 {
	width: 50%;
	padding-left: 10 px;
	float: left
}

.info-2 {
	width: 50%;
	float: right;
}

.tabclass {
	border-radius: 20px;
}

.d h2 {
	color: white;
}

.col-white {
	color: #b9b9b9;
	font-size: 16px;
	padding-right: 35px;
	border-right: 1px solid #b9b9b9;
}

.main-2 {
	width: 100%;
}

.main {
	margin-left: 20%;
	margin-right: 20%;
	margin-bottom: 10%;
	background-color: white;
	width: 980px;
	/* 	background-color:#555; */
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

.tabs .tab a:hover, .tabs .tab a.active {
	background-color: #555;
	color: #ffffff;
}

@media ( min-width : 1200px) {
	.container {
		width: 100%;
	}
}

@media ( max-width :1024px) {
	.main {
		padding-left: 10%;
		padding-right: 10%;
		margin-bottom: 10%;
	}
}

@media ( max-width :768px) {
	#page-wrapper {
		width: 1000px;
	}
	.main {
	margin-top:30px;
		padding-left: 0%;
		padding-right: 0%;
		margin-bottom: 10%;
		margin-left: 0;
	}
	.select {
		width: 100%;
		padding-left: 10%;
		padding-right: 10%;
		height: 300px;
	}
	.select-inside {
		
	}
	#exTab1 .tab-content {
		color: white;
		background-color: #428bca;
		padding: 5px 15px;
	}
	#exTab2 h3 {
		color: white;
		background-color: #428bca;
		padding: 5px 15px;
	}

	/* remove border radius for the tab */
	#exTab1 .nav-pills>li>a {
		border-radius: 0;
	}

	/* change border radius for the tab , apply corners on top*/
	#exTab3 .nav-pills>li>a {
		border-radius: 4px 4px 0 0;
	}
	#exTab3 .tab-content {
		color: white;
		background-color: #428bca;
		padding: 5px 15px;
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


					<li><a href="sdu_reserv.jsp" class="waves-effect waves-dark"><i
							class="fa fa-bar-chart-o"></i> 예매</a></li>

					<li><a href="#" class="waves-effect waves-dark"><i
							class="fa fa-sitemap"></i> 영화<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="sdu_box_office.jsp">박스오피스 랭킹</a></li>
							<li><a href="MovieAllData.do">영화검색</a></li>
							
						</ul></li>
					<li><a href="sdu_theater.jsp" class="active-menu waves-effect waves-dark"><i
							class="fa fa-desktop"></i> 영화관</a></li>

					
				</ul>

			</div>

		</nav>
		<!-- /. NAV SIDE  -->

		<div id="page-wrapper">

			<div class="real">
				<div class="main">
					<div class="main-2">
						<div class="select">


							<br>
							<h2 style="font-weight: bold; color: #333" class="center">영화관
								선택</h2>







							<div></div>
							<br> <br> <br>

							<div id="exTab2" class="tabclass ">
								<ul class="nav nav-tabs" style="position: relative;">
									<li style="margin: 0 15px" class="active"><a href="#1"
										data-toggle="tab">서울</a></li>
									<li style="margin: 0 15px; font-size: 15px"><a href="#2"
										data-toggle="tab">경기</a></li>
									<li style="margin: 0 15px"><a href="#3" data-toggle="tab">인천</a></li>
									<li style="margin: 0 15px"><a href="#4" data-toggle="tab">강원</a></li>
									<li style="margin: 0 15px"><a href="#5" data-toggle="tab">대전/충청
									</a></li>
									<li style="margin: 0 15px"><a href="#6" data-toggle="tab">대구</a></li>
									<li style="margin: 0 15px"><a href="#7" data-toggle="tab">부산/울산</a></li>
									<li style="margin: 0 15px"><a href="#8" data-toggle="tab">경상</a></li>
									<li style="margin: 0 15px"><a href="#9" data-toggle="tab">광주/전라/제주</a></li>



								</ul>

								<div class="tab-content ">
									<div class="tab-pane active" id="1">
										<ul class="selec-ul" style="list-style: none;">
											<li><a class="col-white " href="#">KCV강남</a></li>
											<li><a class="col-white" href="sdu_theater2.jsp">KCV강변</a></li>
											<li><a class="col-white" href="sdu_theater3.jsp">KCV구로</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV건대입구</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV대학로</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV동대문</a></li>



										</ul>

									</div>
									<div class="tab-pane" id="2">
										<ul class="selec-ul" style="list-style: none;">
											<li><a class="col-white " href="wlwl.jsp">KCV경기광주</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV광교상현</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV광명</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV부천</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV서현</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV판교</a></li>
										</ul>
									</div>
									<div class="tab-pane" id="3">
										<ul class="selec-ul" style="list-style: none;">
											<li><a class="col-white " href="wlwl.jsp">KCV계양</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV남주안</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV부평</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV연수역</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV인천</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV청라</a></li>
										</ul>
									</div>
									<div class="tab-pane" id="4">
										<ul class="selec-ul" style="list-style: none;">
											<li><a class="col-white " href="wlwl.jsp">KCV강릉</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV원주</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV인제</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV춘천</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV춘천명동</a></li>

										</ul>
									</div>
									<div class="tab-pane" id="5">
										<ul class="selec-ul" style="list-style: none;">
											<li><a class="col-white " href="wlwl.jsp">KCV당진</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV대전</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV대전가수원</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV대전가오</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV보령</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV서산</a></li>
										</ul>
									</div>
									<div class="tab-pane" id="6">
										<ul class="selec-ul" style="list-style: none;">
											<li><a class="col-white " href="wlwl.jsp">KCV대구</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV대구수성</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV대구스타디움</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV아시아</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV아카데미</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV한일</a></li>
										</ul>
									</div>
									<div class="tab-pane" id="7">
										<ul class="selec-ul" style="list-style: none;">
											<li><a class="col-white " href="wlwl.jsp">KCV남표</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV대연</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV대한</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV동래</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV서면</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV정관</a></li>
										</ul>
									</div>
									<div class="tab-pane" id="8">
										<ul class="selec-ul" style="list-style: none;">
											<li><a class="col-white " href="wlwl.jsp">KCV거제</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV구미</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV김해</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV마산</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV안동</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV창원</a></li>
										</ul>
									</div>
									<div class="tab-pane" id="9">
										<ul class="selec-ul" style="list-style: none;">
											<li><a class="col-white " href="wlwl.jsp">KCV광양</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV용봉</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV목포</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV광주터미널</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV군 산</a></li>
											<li><a class="col-white" href="wlwl.jsp">KCV제주</a></li>
										</ul>
									</div>
								</div>
								<br> <br> <br> <br>

							</div>





							<!-- Bootstrap core JavaScript
    ================================================== -->
							<!-- Placed at the end of the document so the pages load faster -->
							<script
								src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
							<script
								src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>




						</div>

						<br>
						<hr>
						<br>
						<div class="KGV_title">
							<h2 class="center">KGV 강남점</h2>



						</div>
						<br>
						<br>
						<div>
							<img src="img/theater.jpg"
								style="width: 100%; border: 2px solid black"> <br> <br>
							<br>



							<div class="info-1">
								<img src="img/bus.png" style="float: left; width: 40px">
								<h3 style="float: left;">교통안내</h3>
							</div>
							<div class="info-2">
								<img src="img/parking.png" style="float: left; width: 30px">
								<h3>주차안내</h3>
							</div>
							<br> <br>
							<hr style="width: 100%; height: 2px; border-top: 1px solid #555;">

							<br>
							<div class="info">
								<div class="info-1"">
									<br> 2호선 | 강남역 11번 출구 <br> 9호선 | 신논현역 5번출구 <br>
									# 버스 <br> - 분당지역 <br> 좌석버스: 1005-1, 1005-2, 6800,
									5500-2 <br> 간선버스: 408, 462<br> 광역버스: 9404, 9408<br>
									- 강북지역<br> 간선버스: 140, 144, 145, 471<br> - 강서지역<br>
									좌석버스: 1500<br> 간선버스: 360<br> - 강동지역<br> 간선버스:
									402, 420, 470, 407<br> - 인근경기지역<br> 좌석버스: 3030, 2002,
									2002-1<br> 광역버스: 9409, 9500, 9501, 9503, 9700, 9711


								</div>

								<div class="info-2">
									# 주차정보<br> - 위치: 건물 지하2F ~ 지하4F<br> <br> # 주차요금<br>
									- CGV 영화 관람 시 주차 3시간 6,000원<br> - 주차시간 (3시간) 초과 시 10분 당
									1,000원<br> - 10시 이후 (3시간) 초과 시 10분 당 1,500원<br> #발렛
									서비스<br> ※ 발렛서비스 운영시간 : 오전 8시 이후 ~ 오후 20시<br> <br>
									※ 발렛 무료 서비스는 영화 관람 고객 한 함. <br> (영화 미관람 시 건물 주차장에서 별도 정산)<br>
									※ 20시 이후 입차 차량은 발렛서비스 이용이 제한될 수 있으며, <br> 별도 운영되는 주차팀의 사정에
									따라 변경될 수 있습니다.<br> <br> # 이용안내<br> - 주차공간이 협소하여
									평일 오후/주말은 주차가 어렵습니다.<br> - 편리한 대중교통 이용을 이용하여 주시기 바랍니다.
								</div>
							</div>
						</div>
					</div>
					<h2 style="margin-top: 100px;">오시는 길</h2>
					<br>


					<div id="map"
						style="width: 100%; height: 500px; border: 2px black solid"></div>


					<script type="text/javascript"
						src="//dapi.kakao.com/v2/maps/sdk.js?appkey=18c9faa4292dd9d7fa1c45794fb7d65b"></script>
					<script>
						var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
						mapOption = {
							center : new kakao.maps.LatLng(37.501564,
									127.026317), // 지도의 중심좌표
							level : 3
						// 지도의 확대 레벨
						};

						var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

						// 마커를 표시할 위치입니다 
						var position = new kakao.maps.LatLng(37.501564,
								127.026317);

						// 마커를 생성합니다
						var marker = new kakao.maps.Marker({
							position : position,
							clickable : true
						// 마커를 클릭했을 때 지도의 클릭 이벤트가 발생하지 않도록 설정합니다
						});

						// 아래 코드는 위의 마커를 생성하는 코드에서 clickable: true 와 같이
						// 마커를 클릭했을 때 지도의 클릭 이벤트가 발생하지 않도록 설정합니다
						// marker.setClickable(true);

						// 마커를 지도에 표시합니다.
						marker.setMap(map);

						// 마커를 클릭했을 때 마커 위에 표시할 인포윈도우를 생성합니다
						var iwContent = '<div style="padding:5px;">KGV 강남 <br><a href="https://map.kakao.com/link/map/Hello World!,37.501564, 127.026317" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/KGV 강남,37.501564, 127.026317" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
						iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다

						// 인포윈도우를 생성합니다
						var infowindow = new kakao.maps.InfoWindow({
							content : iwContent,
							removable : iwRemoveable
						});

						// 마커에 클릭이벤트를 등록합니다
						kakao.maps.event.addListener(marker, 'click',
								function() {
									// 마커 위에 인포윈도우를 표시합니다
									infowindow.open(map, marker);
								});
					</script>

				</div>


			</div>


			<footer>
				<div class="center">
					<br> <br> <br>
					<%@include file="sdu_footer.jsp"%>
				</div>
			</footer>
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