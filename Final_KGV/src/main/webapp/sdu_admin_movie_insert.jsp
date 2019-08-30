<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<script type="text/javascript">
	function checkValue() {
		if (!document.form.user_id.value) {
			alert("아이디를 입력하세요.");
			return false;
		}

		if (!document.form.user_pw.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}

		// 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
		if (document.form.user_pw.value != document.form.user_pwcheck.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
	}

	// 취소 버튼 클릭시 로그인 화면으로 이동
	function goLoginForm() {
		location.href = "cjw_index.jsp";
	}

	function goPopup() {
		// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
		var pop = window.open("jusoPopup.jsp", "pop",
				"width=570,height=420, scrollbars=yes, resizable=yes");

		// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
		//var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
	}
	/** API 서비스 제공항목 확대 (2017.02) **/
	function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail,
			roadAddrPart2, engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,
			detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn,
			buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo) {
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		document.form.roadAddrPart1.value = roadAddrPart1;
		document.form.roadAddrPart2.value = roadAddrPart2;
		document.form.addrDetail.value = addrDetail;
		document.form.zipNo.value = zipNo;
	}
</script>

<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>JoinForm</title>

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
		<nav class="navbar navbar-default top-navbar" role="navigation">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".sidebar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand waves-effect waves-dark" href="index.jsp"><i
					class="large material-icons">track_changes</i> <strong>target</strong></a>

				<div id="sideNav" href="">
					<i class="material-icons dp48">toc</i>
				</div>
			</div>

			<ul class="nav navbar-top-links navbar-right">
				<li><a class="dropdown-button waves-effect waves-dark"
					href="#!" data-activates="dropdown4"><i
						class="fa fa-envelope fa-fw"></i> <i class="material-icons right">arrow_drop_down</i></a></li>
				<li><a class="dropdown-button waves-effect waves-dark"
					href="#!" data-activates="dropdown3"><i
						class="fa fa-tasks fa-fw"></i> <i class="material-icons right">arrow_drop_down</i></a></li>
				<li><a class="dropdown-button waves-effect waves-dark"
					href="#!" data-activates="dropdown2"><i
						class="fa fa-bell fa-fw"></i> <i class="material-icons right">arrow_drop_down</i></a></li>
				<li><a class="dropdown-button waves-effect waves-dark"
					href="#!" data-activates="dropdown1"><i
						class="fa fa-user fa-fw"></i> <b>John Doe</b> <i
						class="material-icons right">arrow_drop_down</i></a></li>
			</ul>
		</nav>
		<!-- Dropdown Structure -->
		<ul id="dropdown1" class="dropdown-content">
			<li><a href="#"><i class="fa fa-user fa-fw"></i> My Profile</a>
			</li>
			<li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a></li>
			<li><a href="#"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
			</li>
		</ul>
		<ul id="dropdown2" class="dropdown-content w250">
			<li><a href="#">
					<div>
						<i class="fa fa-comment fa-fw"></i> New Comment <span
							class="pull-right text-muted small">4 min</span>
					</div>
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					<div>
						<i class="fa fa-twitter fa-fw"></i> 3 New Followers <span
							class="pull-right text-muted small">12 min</span>
					</div>
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					<div>
						<i class="fa fa-envelope fa-fw"></i> Message Sent <span
							class="pull-right text-muted small">4 min</span>
					</div>
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					<div>
						<i class="fa fa-tasks fa-fw"></i> New Task <span
							class="pull-right text-muted small">4 min</span>
					</div>
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					<div>
						<i class="fa fa-upload fa-fw"></i> Server Rebooted <span
							class="pull-right text-muted small">4 min</span>
					</div>
			</a></li>
			<li class="divider"></li>
			<li><a class="text-center" href="#"> <strong>See
						All Alerts</strong> <i class="fa fa-angle-right"></i>
			</a></li>
		</ul>
		<ul id="dropdown3" class="dropdown-content dropdown-tasks w250">
			<li><a href="#">
					<div>
						<p>
							<strong>Task 1</strong> <span class="pull-right text-muted">60%
								Complete</span>
						</p>
						<div class="progress progress-striped active">
							<div class="progress-bar progress-bar-success" role="progressbar"
								aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
								style="width: 60%">
								<span class="sr-only">60% Complete (success)</span>
							</div>
						</div>
					</div>
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					<div>
						<p>
							<strong>Task 2</strong> <span class="pull-right text-muted">28%
								Complete</span>
						</p>
						<div class="progress progress-striped active">
							<div class="progress-bar progress-bar-info" role="progressbar"
								aria-valuenow="28" aria-valuemin="0" aria-valuemax="100"
								style="width: 28%">
								<span class="sr-only">28% Complete</span>
							</div>
						</div>
					</div>
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					<div>
						<p>
							<strong>Task 3</strong> <span class="pull-right text-muted">60%
								Complete</span>
						</p>
						<div class="progress progress-striped active">
							<div class="progress-bar progress-bar-warning" role="progressbar"
								aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
								style="width: 60%">
								<span class="sr-only">60% Complete (warning)</span>
							</div>
						</div>
					</div>
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					<div>
						<p>
							<strong>Task 4</strong> <span class="pull-right text-muted">85%
								Complete</span>
						</p>
						<div class="progress progress-striped active">
							<div class="progress-bar progress-bar-danger" role="progressbar"
								aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"
								style="width: 85%">
								<span class="sr-only">85% Complete (danger)</span>
							</div>
						</div>
					</div>
			</a></li>
			<li class="divider"></li>
			<li>
		</ul>
		<ul id="dropdown4"
			class="dropdown-content dropdown-tasks w250 taskList">
			<li>
				<div>
					<strong>John Doe</strong> <span class="pull-right text-muted">
						<em>Today</em>
					</span>
				</div>
				<p>Lorem Ipsum has been the industry's standard dummy text ever
					since the 1500s...</p> </a>
			</li>
			<li class="divider"></li>
			<li>
				<div>
					<strong>John Smith</strong> <span class="pull-right text-muted">
						<em>Yesterday</em>
					</span>
				</div>
				<p>Lorem Ipsum has been the industry's standard dummy text ever
					since an kwilnw...</p> </a>
			</li>
			<li class="divider"></li>
			<li><a href="#">
					<div>
						<strong>John Smith</strong> <span class="pull-right text-muted">
							<em>Yesterday</em>
						</span>
					</div>
					<p>Lorem Ipsum has been the industry's standard dummy text ever
						since the...</p>
			</a></li>
			<li class="divider"></li>
			<li><a class="text-center" href="#"> <strong>Read
						All Messages</strong> <i class="fa fa-angle-right"></i>
			</a></li>
		</ul>
		<!--/. NAV TOP  -->
		<!--/. NAV TOP  -->
		<nav class="navbar-default navbar-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">

					<li><a href="index.jsp" class="waves-effect waves-dark"><i
							class="fa fa-dashboard"></i> Dashboard</a></li>
					<li><a href="ui-elements.jsp" class="waves-effect waves-dark"><i
							class="fa fa-desktop"></i> UI Elements</a></li>
					<li><a href="chart.jsp" class="waves-effect waves-dark"><i
							class="fa fa-bar-chart-o"></i> Charts</a></li>
					<li><a href="tab-panel.jsp" class="waves-effect waves-dark"><i
							class="fa fa-qrcode"></i> Tabs & Panels</a></li>

					<li><a href="table.jsp" class="waves-effect waves-dark"><i
							class="fa fa-table"></i> Responsive Tables</a></li>
					<li><a href="form.jsp"
						class="active-menu waves-effect waves-dark"><i
							class="fa fa-edit"></i> Forms </a></li>


					<li><a href="#" class="waves-effect waves-dark"><i
							class="fa fa-sitemap"></i> Multi-Level Dropdown<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="#">Second Level Link</a></li>
							<li><a href="#">Second Level Link</a></li>
							<li><a href="#" class="waves-effect waves-dark">Second
									Level Link<span class="fa arrow"></span>
							</a>
								<ul class="nav nav-third-level">
									<li><a href="#">Third Level Link</a></li>
									<li><a href="#">Third Level Link</a></li>
									<li><a href="#">Third Level Link</a></li>

								</ul></li>
						</ul></li>
					<li><a href="empty.jsp" class="waves-effect waves-dark"><i
							class="fa fa-fw fa-file"></i> Empty Page</a></li>
				</ul>

			</div>

		</nav>
		<!-- /. NAV SIDE  -->








		<div id="page-wrapper">


			<div id="page-inner">
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-content">
								<form method="get" action="MovieInsertData.do" name="form"
									onsubmit="return checkValue()" class="col s12">
									<div class="row">
										<div class="input-field col s6">
											<input id="movie_name" name="movie_name" type="text"
												class="validate"> <label for="movie_name">영화 이름</label>
										</div>
										
									</div>


									 <div class="row">
										<div class="input-field col s6">
											<input id="movie_level" name="movie_level" type="text"
												class="validate"> <label for="movie_level">영화 등급</label>
										</div>
									</div>

									<div class="row">
										<div class="input-field col s6">
											<input id="movie_genre" name="movie_genre" type="text"
												class="validate"> <label for="movie_genre">영화 장르</label>
										</div>
									</div>

									<div class="row">
										<div class="input-field col s6">
											<input id="movie_content" name="movie_content" type="text"
												class="validate"> <label for="movie_content">영화 줄거리</label>
										</div>
									</div>
									
									<div class="row">
										<div class="input-field col s6">
											<input id="movie_director" name="movie_director" type="text"
												class="validate"> <label for="movie_director">영화 감독</label>
										</div>
									</div>
									
									<div class="row">
										<div class="input-field col s6">
											<input id="movie_actor" name="movie_actor" type="text"
												class="validate"> <label for="movie_actor">영화 배우</label>
										</div>
									</div>
									
									<div class="row">
										<div class="input-field col s6">
											<input id="movie_runtime" name="movie_runtime" type="text"
												class="validate"> <label for="movie_runtime">상영시간</label>
										</div>
									</div>
									
									<!-- <div class="row">
										<div class="input-field col s6">
											<input placeholder="예)1990-01-01" name="movie_openday"
												id="movie_openday" type="text" class="validate" maxlength="20">
											<label for="movie_openday">개봉일</label>
										</div>
									</div> -->


									




									<input type="submit" value="등록" /> <input type="button"
										value="취소" onclick="goLoginForm()"> <br>
									<br>




								</form>
								<div class="clearBoth"></div>
							</div>
						</div>
					</div>
				</div>

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