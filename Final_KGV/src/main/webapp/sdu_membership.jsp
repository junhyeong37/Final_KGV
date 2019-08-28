<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"> 
<head>
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

<body>
    <div id="wrapper">
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle waves-effect waves-dark" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand waves-effect waves-dark" href="sdu_index_navbar.jsp"><i class="large material-icons">track_changes</i> <strong>KGV</strong></a>
				
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
 
	   <!--/. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">

                    <li>
                        <a class="active-menu waves-effect waves-dark" href="sdu_index_navbar.jsp"><i class="fa fa-dashboard"></i> 메인</a>
                    </li>
                     
                    
					<li>
                        <a href="sdu_reserv.jsp" class="waves-effect waves-dark"><i class="fa fa-bar-chart-o"></i> 예매</a>
                    </li>
                    
                    <li>
                        <a href="#" class="waves-effect waves-dark"><i class="fa fa-sitemap"></i> 영화<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="sdu_box_office.jsp">박스오피스 랭킹</a>
                            </li>
                            <li>
                                <a href="sdu_movie_search.jsp">영화검색</a>
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
                        <a href="sdu_content.jsp" class="waves-effect waves-dark"><i class="fa fa-desktop"></i> 고객센터</a>
                    </li>
                    
                    
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
      
		<div id="page-wrapper">
		  
		  <div id="">
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