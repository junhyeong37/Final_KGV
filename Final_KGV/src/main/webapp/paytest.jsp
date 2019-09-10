<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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




<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<!-- <script src="https://code.jquery.com/jquery-1.11.3.js"></script> -->


<!-- <script>
$(document).on('click','#findId',function(){
	var user_name = $('#user_name').val();
 	var user_tel = $('#user_tel').val();
 	var postData = {'user_name' : user_name , 'user_tel' : user_tel};


	$.ajax({
        url:"findingId.do",
        type:"POST",
        data: postData, 
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",        
        dataType : 'json', 
		async:false,
        accepts: {mycustom: "application/xml"},
     
        
       success : function(data){
      	         /* var IdLists = Data.user_id;
       	        	var IdLength = IdLists.user_id;
       	        	var Idfind = IdLists.substring(1, IdLength-1);
        		  $("#postData").append("<h1>"+"회원님의 정보로 등록된 아이디는 : "+Idfind+" 입니다.</h1>");    */		  
			 if( postData == user_name ||  postData == user_name){
	       		 alert('성공');
				 }
       }, 
       
        error: function(XMLHttpRequest, textStatus, errorThrown){ 
        	 
         	if(user_name=="" || user_tel=="") {
         		var postData = null;
         	}
            
			 if( postData != user_name ||  postData != user_name){
       		 alert('정보를 다시 입력해주시길 바랍니다.');
     	  	 location.replace("sdu_idsearch.jsp")
			 }

       }     

    });
});

</script> -->


<!-- <script>
function duplicationId() {
	var inputName = $("#user_name").val();
	var inputTel = $("#user_tel").val();
	var allData = { "inputName": inputName, "inputTel": inputTel };
	
	var test = false;
	$.ajax({
		async: false,
		type: "post",
		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		url: "findId.do",  //findId.do
		data: allData, 
		
		success: function (data) {
			if(data == "F") {
				alert("성공");
				
			} else {
				test = false
				alert("정보를 잘못 입력했어요")
			}
		},
		error: function(req, status, errThrown) {
			alert("network error occur");
		}
	});
	
	return test
}
</script> -->

<script>
	function duplicationId() {
		var inputName = $("#user_name").val();
		var inputTel = $("#user_tel").val();
		var allData = {
			"inputName" : inputName,
			"inputTel" : inputTel
		};

		var test = false;
		$.ajax({
			async : false,
			type : "post",
			contentType : "application/x-www-form-urlencoded; charset=UTF-8",
			url : "findId.do", //findId.do
			data : allData,

			success : function(data) {
				if (data == "F") {
					alert("성공");
					location.href = "sdu_idsearch_ok.jsp"
				} else {
					test = false
					alert("정보를 잘못 입력했어요")
				}
			},
			error : function(req, status, errThrown) {
				alert("정보를 잘못 입력했어요");
			}
		});

		return test
	}
</script>
<style>
.top-navbar {
	top: 0;
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
					href="sdu_index_navbar.jsp"
					style="padding-top: 7px; padding-bottom: 0px;"> <img alt=""
					src="assets/img/KGVlogo.png" style="width: 50%;"></a>

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
					href="sdu_index_navbar.jsp"
					style="padding-top: 7px; padding-bottom: 0px;"> <img alt=""
					src="assets/img/KGVlogo.png" style="width: 50%;"></a>

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
			<li><a href="sdu_index_navbar.jsp"><i
					class="fa fa-user fa-fw"></i> 로그아웃</a></li>
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


			<div id="page-inner">
				<div class="row" style="margin-bottom: 0px;">
					<div class="col-md-1"></div>
					<div class="card col-md-10"
						style="text-align: center; padding-left: 0px; padding-right: 0px; margin-bottom: 0px;">


						<div class="col-md-5"
							style="padding-left: 0px; padding-right: 0px;">

							<div class="card-action center"></div>
							<div class="card-content"
								style="padding-left: 0px; padding-right: 0px;">
								<img class="mobileimg" height="495px" alt="poster"
									src="assets/img/어바웃 타임/1.jpg">
								<!-- <br><br> <div><a
                  class="waves-effect waves-light btn blue-grey darken-4 white-tex"
                  href="sdu_reserv.jsp"> 예매하기 </a></div>
 -->
								<!--  <div class="clearBoth">
                              <br />
                           </div> -->

							</div>
						</div>
						<!-- <div class="col-md-1"></div> -->

						<!-- <div class="col-md-7" style="background-color: #c3c5f9;"> -->

						<form action="play.do" method="get">
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
														<strong style="font-size: larger;">제 목</strong>
														<c:forEach items="${ulist }" var="val" varStatus="status">

															<input type="text" id="movie_name" name="movie_name"
																value="${movie_name}" readonly>
														</c:forEach>
													</h1></td>
											</tr>
										</table>

									</div>

									<div class="alert alert-info col-md-8"
										style="background-color: #ffffff00; color: black; border-color: #ffffff00;">
										<table>
											<tr>
												<td style="font-size: medium;"><strong>극장</strong>&nbsp;&nbsp;&nbsp;</td>
												<td><input type="text" id="play_theater"
													name="play_theater" value="${play_theater}" readonly>
												</td>
											</tr>
										</table>

									</div>
									<div class="col-md-4"></div>
									<div class="alert alert-success col-md-8"
										style="background-color: #ffffff00; color: black; border-color: #ffffff00;">
										<table>
											<tr>
												<td style="font-size: medium;"><strong>날짜</strong>&nbsp;&nbsp;</td>
												<td><input type="text" id="play_day"name="play_day" value="${play_day}" readonly>
												<input type="text" id="play_time"name="play_time" value="${play_time}" readonly>
												</td>
											</tr>
										</table>

									</div>
									<div class="col-md-4"></div>
									<div class="alert alert-info col-md-8"
										style="background-color: #ffffff00; color: black; border-color: #ffffff00;">
										<table>
											<tr>
												<td style="font-size: medium;"><strong>인원</strong>&nbsp;&nbsp;</td>
												<td><input type="text" id="play_inwon"name="play_inwon" value="${play_inwon}" readonly>
											</tr>
										</table>

									</div>
									<div class="col-md-4"></div>

									<div class="alert alert-success col-md-8"
										style="background-color: #ffffff00; color: black; border-color: #ffffff00;">
										<table>
											<tr>
												<td style="font-size: medium;"><strong>좌석</strong>&nbsp;&nbsp;</td>
												<td><input type="text" id="play_seat"name="play_seat" value="${play_seat}" readonly>
											</tr>
										</table>

									</div>
									<div class="col-md-4"></div>

									<div class="alert alert-info col-md-8"
										style="background-color: #ffffff00; color: black; border-color: #ffffff00;">
										<table>
											<tr>
												<td style="font-size: medium;"><strong>금액</strong>&nbsp;&nbsp;
													<font
													style="font-size: x-large; color: yellow; font-weight: bold;"></font></td>
													<td><input type="text" id="play_price"name="play_price" value="${play_price}" readonly>
											</tr>
											<tr>
												<td style="font-size: medium;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;
														&nbsp;&nbsp;&nbsp;&nbsp;결제하시겠습니까?</strong></td>
														
														<td><input type="submit" id="play" name="play" value="결제하기"></td>
											</tr>
										</table>

									</div>

									<div class="col-md-4"></div>


									<div class="col-md-4"></div>

									<div class="clearBoth">
										<br /> <br> <br>
									</div>

								</div>
								<!-- </div> -->


							</div>
						</form>


					</div>

					<div class="col-md-1"></div>
				</div>



				<div class="row">
					<div class="col-md-1"></div>

					<div class="card col-md-10">
						<div class="col-md-8"></div>
						<div class="col-md-4" style="padding-right: 0px;">
							<div style="text-align: center;">
								<a
									class="waves-effect waves-light btn blue-gray darken-4 white-tex"
									href="sdu_index_navbar.jsp"> 취소하기 </a> <a
									class="waves-effect waves-light btn yellow darken-4 white-tex"
									href="MovieAllData.do"> 예매하기 </a>
							</div>
						</div>



					</div>

					<div class="col-md-1"></div>
				</div>

			</div>
			<span id="IdList"></span>

			<footer>
				<div class="center">
					<br> <br> <br> <br> <br> <br> <br>
					<br> <br> <br> <br> <br> <br>
					<%@include file="sdu_footer.jsp"%>
				</div>
			</footer>

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