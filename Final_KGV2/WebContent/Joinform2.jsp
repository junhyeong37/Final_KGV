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
				<a class="navbar-brand waves-effect waves-dark" href="MovieAllData2.do"><i
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
					<div class="col-md-3"></div>
					<div class="col-lg-6">
						<div class="card">
							<div class="card-content">
								<form method="get" action="UserInsertData.do" name="form"
									onsubmit="return checkValue()" class="col s12">
									<div class="row">
										<div class="input-field col s12">
											<input id="user_id" name="user_id" type="text"
												class="validate"> <label for="user_id">I D</label>
										</div>
										<!-- <div class="input-field col s6">
          <input id="last_name" type="text" class="validate">
          <label for="last_name">Last Name</label>
        </div> -->
									</div>


									<div class="row">
										<div class="input-field col s12">
											<input id="user_pw" name="user_pw" type="password"
												class="validate"> <label for="user_pw">비밀번호</label>
										</div>
									</div>

									<div class="row">
										<div class="input-field col s12">
											<input id="user_pwcheck" name="user_pwcheck" type="password"
												class="validate"> <label for="user_pwcheck">비밀번호
												확인</label>
										</div>
									</div>

									<div class="row">
										<div class="input-field col s12">
											<input id="user_name" name="user_name" type="text"
												class="validate"> <label for="user_name">이 름</label>
										</div>
									</div>

									<div class="row">
										<div class="input-field col s3" style="width: 115px;">
											<p>
												<!-- <div class="input-field col s6"> -->
												<input name="user_sex" id="user_sex" type="radio"
													class="validate"> <label name="user_sex"
													for="user_sex">남</label>
											</p>
										</div>
										<div class="input-field col s3" style="width: 115px;">
											<p>
												<input name="user_sex" id="user_sex1" type="radio"
													class="validate"> <label name="user_sex"
													for="user_sex1">여</label>
											</p>
										</div>
									</div>


									<div class="row">
										<div class="input-field col s3">
											<input name="user_email" id="str_email01" type="text"
												class="validate"> <label for="user_email">이메일</label>
										</div>
										<div class="input-field col s0">
											<h4>@</h4>
										</div>
										<div class="input-field col s3">
											<input type="text" name="user_email" id="str_email02"
												disabled value="naver.com">
										</div>
										<div class="input-field col s3">
											<select name="selectEmail" id="selectEmail"
												class="form-control">
												<option value="1">직접입력</option>
												<option value="naver.com" selected>naver.com</option>
												<option value="hanmail.net">hanmail.net</option>
												<option value="nate.com">nate.com</option>
												<option value="gmail.com">gmail.com</option>
												<option value="daum.net">daum.net</option>
											</select>
										</div>
									</div>

									<script type="text/javascript"
										src="http://code.jquery.com/jquery-latest.min.js"></script>
									<script type="text/javascript">
										$('#selectEmail')
												.change(
														function() {
															$(
																	"#selectEmail option:selected")
																	.each(
																			function() {
																				if ($(
																						this)
																						.val() == '1') {
																					//직접입력일 경우
																					$(
																							"#str_email02")
																							.val(
																									'');
																					//값 초기화 
																					$(
																							"#str_email02")
																							.attr(
																									"disabled",
																									false);
																					//활성화 
																				} else {
																					//직접입력이 아닐경우
																					$(
																							"#str_email02")
																							.val(
																									$(
																											this)
																											.text());
																					//선택값 입력
																					$(
																							"#str_email02")
																							.attr(
																									"disabled",
																									true);
																					//비활성화
																				}
																			});
														});
									</script>

									<div class="row">
										<div class="input-field col s12">
											<input placeholder="예)19900101" name="user_birth"
												id="user_birth" type="text" class="validate" maxlength="8">
											<label for="user_birth">생년월일</label>
										</div>
									</div>


									<div class="row">
										<div class="input-field col s12">
											<input placeholder="-를 제외하고 입력" id="user_tel" name="user_tel"
												type="text" class="validate" maxlength="11"> <label
												for="user_tel">핸드폰번호</label>
										</div>
									</div>



									<div class="row">

										<div class="input-field col s0"
											style="margin-top: 20px; margin-bottom: 0px;">우편번호</div>
										<div class="input-field col s3">
											<input type="hidden" id="confmKey" name="confmKey" value="">
											<input type="text" id="zipNo" name="zipNo" readonly>
										</div>
										<div class="input-field col s3"
											style="margin-top: 0px; margin-left: 0px; margin-right: 0px; float: left;">
											<input type="button" value="주소검색" onclick="goPopup();">
										</div>
									</div>



									<div class="row">
										<div class="input-field col s0"
											style="margin-top: 20px; margin-bottom: 0px;">도로명주소</div>
										<div class="input-field col s12">
											<input type="text" id="roadAddrPart1" name="user_address">
										</div>
									</div>

									<div class="row">

										<div class="input-field col s0"
											style="margin-top: 20px; margin-bottom: 0px;">상세주소</div>
										<div class="input-field col s5">
											<input type="text" id="addrDetail" value="" readonly
												name="user_address2">
										</div>
										<div class="input-field col s3">
											<input type="text" id="roadAddrPart2" value="" readonly>
										</div>
									</div>


									<input type="submit" value="가입" /> <input type="button"
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