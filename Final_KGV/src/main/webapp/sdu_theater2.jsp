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
		<div class="sidebar">
			<nav class="navbar-default navbar-side" role="navigation">
				<div class="sidebar-collapse">
					<ul class="nav" id="main-menu">

						<li><a class="waves-effect waves-dark"
							href="sdu_index_navbar.jsp"><i class="fa fa-dashboard"></i>
								메인</a></li>


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
						<li><a href="sdu_theater.jsp"
							class="active-menu waves-effect waves-dark"><i
								class="fa fa-desktop"></i> 영화관</a></li>


					</ul>

				</div>

			</nav>
		</div>
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
											<li><a class="col-white " href="sdu_theater.jsp">KCV강남</a></li>
											<li><a class="col-white" href="#">KCV강변</a></li>
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
											<li><a class="col-white" href="wlwl.jsp">KCV군	산</a></li>
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
						<h2 class="center">KGV 강변점</h2>
							
						
						</div>
						<br><br>
						<div>
							<img src="img/theater2.png"
								style="width: 100%;
							border:2px solid black"> <br> <br>
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
								<div class="info-1"><br> # 일반버스 이용 시<br>
마을: 강동01,광진01,광진03,광진04,광진05<br>
일반: 1,1-1,1-2,9,9-1,13,13-2,15,91,92,93,95,96,96-1,97,112,112-1,2000-1,2000-3,2000-4<br>
지선: 2224,3212,3214<br>
광역: 11,100,1112,1113,1113-1,1113-2,1117,1650,1660,5600,5700<br>
공항: 6705<br>
<br>
# 지하철 이용 시<br>
- 2호선: 강변역 하차 1번 출구 테크노마트 10층<br>

								
							</div>

								<div class="info-2">
									지하주차장<br>
<br>
테크노마트 지하5층~ 지하2층<br>
운영시간 : 평일 오전 5시~새벽 2시,<br>
              주말(토,일 or 금,토,일) 5시~새벽 3시<br>
이용요금 : 20시 이전 2,000원/1시간 (20시 이후 1,000원/1시간)<br>d
<br>
최초 입차 후 1시간 무료/영화 관람시 50% 할인가능<br>
지하주차장 차량 입차는 마지막 영화 시작 시까지 가능하며, 출차는 24시간 가능합니다.<br>
<br>
지상주차장<br>
<br>
위치 : 테크노마트와 프라임상가 사이<br>
주차가능대수 : 71대<br>
운영시간 : 오전7시~오후9시<br>
요금 : 20시 이전 4,000원/1시간 (20시 이후 2,000원/1시간)<br>
<br>
최초 입차 후 30분 무료/영화 관람시 50% 할인가능<br>
(할인권 구입, 할인권은 3장만 사용가능)<br>
주차장 할인은 극장이 있는 10층의 주차데스크에서 할인권을 구입하셔야 할인이 가능합니다.<br>
								</div>
							</div>
						</div>
					</div>
					<h2
						style=" margin-top: 100px;">오시는
						길</h2>
					<br>


					<div id="map"
						style="width: 100%; height: 500px; border:2px black solid"></div>


					<script type="text/javascript"
						src="//dapi.kakao.com/v2/maps/sdk.js?appkey=18c9faa4292dd9d7fa1c45794fb7d65b"></script>
					<script>
						var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
						mapOption = {
							center : new kakao.maps.LatLng(37.535475, 127.095736), // 지도의 중심좌표
							level : 3
						// 지도의 확대 레벨
						};

						var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

						// 마커를 표시할 위치입니다 
						var position = new kakao.maps.LatLng(37.535475, 127.095736);

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
						var iwContent = '<div style="padding:5px;">KGV 강변 <br><a href="https://map.kakao.com/link/map/KGV 강변,37.535475, 127.095736" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/KGV 강변,37.535475, 127.095736" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
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