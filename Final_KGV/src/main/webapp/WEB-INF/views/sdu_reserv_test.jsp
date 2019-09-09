<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>	
	
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>KGV 예매 홈</title>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	var jb1 = "";
	var jb2 = "";

	$(document).ready(function() {
		$('.test').click(function() {
			$('.test').removeClass('active-menu');
			$(this).toggleClass('active-menu');
			var jb = $('tr.active-menu>td:nth-child(2)').text().trim();
			var movie_no = $('tr.active-menu>td:nth-child(3)').text().trim();
			$('input#A').val(jb);
			$('input#movie_no').val(movie_no);
			
		});
		$('tr.test2').click(function() {
			$('.test2').removeClass('active-menu');
			$(this).toggleClass('active-menu');
			//var jb = $(this).html().trim();
			var jb = $('tr.active-menu.test2>td:nth-child(2)').text().trim();
			$('input#B').val(jb);
		});
		$('.test3').click(function() {
			$('.test3').removeClass('active-menu');
			$(this).toggleClass('active-menu');
			var jb = $('th.active-menu>div').text().trim();
			/* alert(jb); */
			$('input#D').val(jb);
		});
		$('.test4').click(function() {
			$('.test4').removeClass('active-menu');
			$(this).toggleClass('active-menu');
			/* var jb = $('th.active-menu.test4>div>input:button').val(); */
			jb1 = "성인 " + $('th.active-menu.test4>div').text().trim() + "명";
			$('input#E').val(jb1 + jb2);
		});
		$('.test5').click(function() {
			$('.test5').removeClass('active-menu');
			$(this).toggleClass('active-menu');
			/* var jb = $('th.active-menu.test4>div>input:button').val(); */
			jb2 = ", 학생" +$('th.active-menu.test5>div').text().trim() +"명";
			$('input#E').val(jb1 + jb2);
		});
		$('table.table-striped').click(function() {
			var jb = $('table#date1 input.date-picker').val();
			$('input#C').val(jb);
		});
		$('input.testbn1').click(function() {
			alert("띠바아아앙");
		});
		
		
	});
	
		



</script>

<style>
.scrolltbody {
	display: block;
	height: 450px;
	width: auto;
	border-collapse: collapse;
	overflow: scroll;
}

.ab {
	background-color: #AFAFAF;
}
.top-navbar{
 	top:0;
}
</style>

	







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

<!-- 달력부분 -->
<link rel="stylesheet" href="style.css" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript" src="calendar.js"></script>


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

					<li><a href="MovieAllData2.do"
						class="active-menu waves-effect waves-dark"><i
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


				</ul>

			</div>

		</nav>
		<!-- /. NAV SIDE  -->

		<div id="page-wrapper" style="background-image: url('back.jpg');">

			<form action="Goseat.do">
			<div id="page-inner">
				<div class="row">
					<div class="card col-md-12">
						<!-- Advanced Tables -->
						<div class="col-md-3">
							<div class="card">

								<div class="card-content" style="height: 540px;">
									<!--   <div class="table-responsive"> -->
									<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th colspan="2"><h3
														style="background-color: gray; margin-top: 0px; margin-bottom: 0px;"
														align="center">상영영화</h3></th>
												<!-- <th><h1 style="background-color: gray;" align="center">MovieStore</h1></th>
											<th><h1 style="background-color: gray;" align="center">schedule</h1></th> -->
											</tr>
										</thead>
										<tbody class="scrolltbody" style="height: 454px;">
											<tr>
												<!-- <td style="width: 37.979166px;"></td> -->
												<td width="15%">등급</td>
												<td width="85%">영화제목</td>

											<c:forEach var="e" items="${movielist}"> 
											<tr class="test">
												<td><img alt="" src="assets/img/12.png"></td>
												<td id="movie2" onclick="mclick2()" style="cursor: pointer">${e.movie_name}</td>
												<td hidden="" id="movieno" onclick="mclick2()" style="cursor: pointer">${e.movie_no}</td>
											</tr>
											</c:forEach>	 


										</tbody>

									</table>






								</div>

							</div>
						</div>
						<!--End Advanced Tables -->
						<!-- <div class="col-md-4">
							<div class="card">
<div class="card-content">
<div class="table-responsive">
						<table class="table table-striped table-bordered table-hover">
						 <table class="table table-striped table-bordered table-hover"> 
					   
									<thead>
										<tr>
											
											 <th>MovieStore</th>
										
										</tr>
									</thead>
									<tbody>
									
                                            <tr>
										<tr class="odd gradeX"><td>확인</td></tr>
										<tr class="even gradeC"><td>Internet Explorer 5.0</td></tr>
										<tr class="odd gradeA"><td>Internet Explorer 5.0</td></tr>
										 <tr class="even gradeA"><td>Internet Explorer 5.0</td></tr>
										 <tr class="odd gradeA"><td>Internet Explorer 5.0</td></tr>
										 <tr class="even gradeA"><td>Internet Explorer 5.0</td></tr>
										<tr class="gradeA"><td>Internet Explorer 5.0</td></tr>
										
										
										
										</tbody>
										</table>
										</div>
										</div>
										</div>
										</div> -->









						<div class="col-md-5">

							<div class="card">

								<div class="card-content" style="text-align: center;">
									<div class="table-responsive" style="height: 500px;">

										<h3 style="background-color: gray;" align="center">극장</h3>

										<table class="table table-striped table-bordered table-hover"
											id="dataTables-example">

											<thead>
												<tr>
													<th>지역</th>
													<th>지점명</th>
													<th></th> 
												</tr>
											</thead>
											<tbody>
												<tr class="odd gradeX test2">
													<td>강동구</td>
													<td id="Theater">가나다 CGV</td>
													 <th><div align="center">
															<input type="button" id="testbn1" class="testbn1" value="선택">
														</div></th> 
												</tr>
												 <tr class="even gradeC test2">
													<td>동대문구</td>
													<td id="Theater">바우 롯데시네마222</td>
													<th><div align="center">
															<input type="button" id="testbn1" class="testbn1" value="선택">
														</div></th>
												</tr>
												<tr class="odd gradeA test2">
													<td>성동구</td>
													<td id="Theater">성동 메가박스</td>
													<th><div align="center">
															<input type="button" id="testbn1" class="testbn1" value="선택">
														</div></th>
												</tr>
												<tr class="even gradeA test2">
													<td>강남구</td>
													<td id="Theater">강남강남강남강남 CGV</td> 	
													<th><div align="center">
															<input type="button" id="testbn1" class="testbn1" value="선택">
														</div></th>
												</tr>
												<tr class="odd gradeA test2">
													<td>강남구</td>
													<td id="Theater">압구정 CGV</td>
													<th><div align="center">
															<input type="button" id="testbn1" class="testbn1" value="선택">
														</div></th>
												</tr>
												<tr class="even gradeA test2">
													<td>서대문구</td>
													<td id="Theater">독립문 롯데시네마</td>
													<th><div align="center">
															<input type="button" id="testbn1" class="testbn1" value="선택">
														</div></th>
												</tr>
												<tr class="even gradeA test2">
													<td>서대문구</td>
													<td id="Theater">이대 CGV</td>
													<th><div align="center">
															<input type="button" id="testbn1" class="testbn1" value="선택">
														</div></th>
												</tr>

												<tr class="odd gradeX test2">
													<td>강동구</td>
													<td id="Theater">가나다 CGV</td>
													<th><div align="center">
															<input type="button" id="testbn1" class="testbn1" value="선택">
														</div></th>
												</tr>
												<tr class="even gradeC test2">
													<td>동대문구</td>
													<td id="Theater">바우 롯데시네마</td>
													<th><div align="center">
															<input type="button" id="testbn1" class="testbn1" value="선택">
														</div></th>
												</tr>
												<tr class="odd gradeA test2">
													<td>성동구</td>
													<td id="Theater">성동 메가박스</td>
													<th><div align="center">
															<input type="button" id="testbn1" class="testbn1" value="선택">
														</div></th>
												</tr>
												<tr class="even gradeA test2">
													<td>강남구</td>
													<td id="Theater">강남 CGV</td>
													<th><div align="center">
															<input type="button" id="testbn1" class="testbn1" value="선택">
														</div></th>
												</tr>
												<tr class="odd gradeA test2">
													<td>강남구</td>
													<td id="Theater">압구정 CGV 올드</td>
													<th><div align="center">
															<input type="button" id="testbn1" class="testbn1" value="선택">
														</div></th>
												</tr>
												<tr class="even gradeA test2">
													<td>서대문구</td>
													<td id="Theater">독립문 롯데시네마</td>
													<th><div align="center">
															<input type="button" id="testbn1" class="testbn1" value="선택">
														</div></th>
												</tr>
												<tr class="even gradeA test2">
													<td>서대문구</td>
													<td id="Theater">이대 CGV</td>
													<th><div align="center">
															<input type="button" id="testbn1" class="testbn1" value="선택">
														</div></th>
												</tr>

												<!-- ----------------------------------------------------------- -->

												<tr class="odd gradeX test2">
													<td>강동구</td>
													<td id="Theater">가나다 CGV</td>
													<th><div align="center">
															<input type="button" id="testbn1" class="testbn1"value="선택">
														</div></th>
												</tr>
												<tr class="even gradeC test2">
													<td>동대문구</td>
													<td id="Theater">바우 롯데시네마</td>
													<th><div align="center">
															<input type="button" id="testbn1" class="testbn1" value="선택">
														</div></th>
												</tr>
													<tr class="odd gradeA test2">
														<td>성동구</td>
														<td id="Theater">성동 메가박스</td>
														<th><div align="center">
																<input type="button" class="testbn1" id="testbn1"
																	value="선택">
															</div></th>
													</tr>
													<tr class="even gradeA test2">
													<td>강남구</td>
													<td id="Theater">강남 CGV</td>
													<th><div align="center">
															<input type="button"  class="testbn1" id="testbn1" value="선택">
														</div></th>
												</tr>
												<tr class="odd gradeA test2">
													<td>강남구</td>
													<td id="Theater">압구정 CGV</td>
													<th><div align="center">
															<input type="button"  class="testbn1" id="testbn1" value="선택">
														</div></th>
												</tr>
												<tr class="even gradeA test2">
													<td>서대문구</td>
													<td id="Theater">독립문 롯데시네마</td>
													<th><div align="center">
															<input type="button"  class="testbn1" id="testbn1"value="선택">
														</div></th>
												</tr>
												<tr class="even gradeA test2">
													<td>서대문구</td>
													<td id="Theater">이대 CGV</td>
													<th><div align="center">
															<input type="button"  class="testbn1" id="testbn1" value="선택">
														</div></th>
												</tr>

												<tr class="odd gradeX test2">
													<td>강동구</td>
													<td id="Theater">가나다 CGV</td>
													<th><div align="center"> 
															<input type="button" class="testbn1" id="testbn1" value="선택">
														</div></th>
												</tr>
												<tr class="even gradeC test2">
													<td>동대문구</td>
													<td id="Theater">바우 롯데시네마</td>
													<th><div align="center">
															<input type="button" class="testbn1" id="testbn1"  value="선택">
														</div></th>
												</tr>
												<tr class="odd gradeA test2">
													<td>성동구</td>
													<td id="Theater">성동 메가박스</td>
													<th><div align="center">
															<input type="button"  class="testbn1" id="testbn1" value="선택">
														</div></th>
												</tr>
												<tr class="even gradeA test2">
													<td>강남구</td>
													<td id="Theater">강남 CGV</td>
													<th><div align="center">
															<input type="button"id="testbn1" class="testbn1" value="선택">
														</div></th>
												</tr>
												<tr class="odd gradeA test2">
													<td>강남구</td>
													<td id="Theater">압구정 CGV</td>
													<th><div align="center">
															<input type="button" id="testbn1" class="testbn1" value="선택">
														</div></th>
												</tr>
												<tr class="even gradeA test2">
													<td>서대문구</td>
													<td id="Theater">독립문 롯데시네마</td>
													<th><div align="center">
															<input type="button"id="testbn1" value="선택">
														</div></th>
												</tr>
												<tr class="even gradeA test2">
													<td>서대문구</td>
													<td id="Theater">이대 CGV</td>
													<th><div align="center">
															<input type="button"id="testbn1" value="선택">
														</div></th>
												</tr> 
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>




















						<div class="col-md-4">
							<div class="card">
								<div class="card-content">
									<table class="table table-striped table-bordered table-hover" id="date1"
										style="margin-bottom: 0px; height: 500px;">
										<thead>
											<tr>

												<th><h3
														style="background-color: gray; margin-top: 0px; margin-bottom: 0px;"
														align="center">날짜선택</h3></th>

											</tr>
										</thead>
										<tbody>
											<tr>
												<td>

													<div class="date-picker" align="center">
														<input class="date-picker" type="text"
															style="text-align: center; background-color: orange;"
															value="">
														<%-- <input type="text" style="text-align: center;" value="${date }"> --%>
													</div> <!-- <input class="date-picker" type="text" value="2015-12-25"/> -->
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>




					<div class="card col-md-12">
						<!-- Advanced Tables -->



						<div class="col-md-4">
							<div class="card">

								<div class="card-content">
									<table class="table table-striped table-bordered table-hover"
										style="margin-bottom: 0px;">
										<!-- <table class="table table-striped table-bordered table-hover" id="dataTables-example"> -->
										<thead>
											<tr>
												<th colspan="6"><h3
														style="background-color: gray; margin-top: 0px; margin-bottom: 0px;"
														align="center">상영시간표</h3></th>
												<!-- <th><h1 style="background-color: gray;" align="center">MovieStore</h1></th>
											<th><h1 style="background-color: gray;" align="center">schedule</h1></th> -->
											</tr>
										</thead>
										<tbody>
											<tr>
												<td colspan="6">영화관</td>
											</tr>
											<tr>
												<td colspan="6">상영관번호</td>
											</tr>


											<!-- <th>
										<tr>No</tr></th> -->

											<tr>
												<th>1관</th>
												<th class="test3"><div style="text-align: center;">
														<!-- <input type="button" value="12:00"> -->
														12:00
													</div></th>
												<th class="test3"><div style="text-align: center;">
														<!-- <input type="button" value="14:00"> -->
														14:00
													</div></th>
												<th class="test3"><div style="text-align: center;">
														<!-- <input type="button" value="15:30"> -->
														15:30
													</div></th>
												<th class="test3"><div style="text-align: center;">
														<!-- <input type="button" value="16:50"> -->
														16:50
													</div></th>
												<th class="test3"><div style="text-align: center;">
														<!-- <input type="button" value="19:00"> -->
														19:00
													</div></th>

											</tr>
											<tr>
												<th>2관</th>
												<th class="test3"><div style="text-align: center;">
														<!-- <input type="button" value="12:00"> -->
														12:00
													</div></th>
												<th class="test3"><div style="text-align: center;">
														<!-- <input type="button" value="14:00"> -->
														14:00
													</div></th>
												<th class="test3"><div style="text-align: center;">
														<!-- <input type="button" value="15:30"> -->
														15:30
													</div></th>
												<th class="test3"><div style="text-align: center;">
														<!-- <input type="button" value="16:50"> -->
														16:50
													</div></th>
												<th class="test3"><div style="text-align: center;">
														<!-- <input type="button" value="19:00"> -->
														19:00
													</div></th>

											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>

						<div class="col-md-4">
							<div class="card">

								<div class="card-content">
									<table class="table table-striped table-bordered table-hover"
										style="margin-bottom: 0px; height: 205px;">
										<thead>
											<tr>
												<th colspan="6"><h3
														style="background-color: gray; margin-top: 0px; margin-bottom: 0px;"
														align="center">인원선택</h3></th>
												<!-- <th><h1 style="background-color: gray;" align="center">MovieStore</h1></th>
											<th><h1 style="background-color: gray;" align="center">schedule</h1></th> -->
											</tr>
										</thead>
										<tbody>
											<tr>
												<th>성인</th>
												<th class="test4"><div style="text-align: center;">
														<!-- <input type="button" value="0"> -->
														0
													</div></th>
												<th class="test4"><div style="text-align: center;">
														<!-- <input type="button" value="1"> -->
														1
													</div></th>
												<th class="test4"><div style="text-align: center;">
														<!-- <input type="button" value="2"> -->
														2
													</div></th>
												<th class="test4"><div style="text-align: center;">
														<!-- <input type="button" value="3"> -->
														3
													</div></th>
												<th class="test4"><div style="text-align: center;">
														<!-- <input type="button" value="4"> -->
														4
													</div></th>
											</tr>
											<tr>
												<th>학생</th>
												<th class="test5"><div style="text-align: center;">
														<!-- <input type="button" value="0"> -->
														0
													</div></th>
												<th class="test5"><div style="text-align: center;">
														<!-- <input type="button" value="1"> -->
														1
													</div></th>
												<th class="test5"><div style="text-align: center;">
														<!-- <input type="button" value="2"> -->
														2
													</div></th>
												<th class="test5"><div style="text-align: center;">
														<!-- <input type="button" value="3"> -->
														3
													</div></th>
												<th class="test5"><div style="text-align: center;">
														<!-- <input type="button" value="4"> -->
														4
													</div></th>
											</tr>
											<tr>
												<th colspan="6" style="text-align: center;"><div style="text-align: center; background-color: black;" class="waves-effect waves-light btn">
														<input type="submit" value="예매하기">
													</div></th>
													
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>

						<div class="col-md-4">
							<div class="card">
								<div class="card-content">
									<input type="text" readonly="readonly" id="A" name="A" style="color: black;"/><br /> 
									<input type="text" readonly="readonly" id="B" name="B" style="color: black;"/> <br /> 
									<input type="text" readonly="readonly" id="C" name="C" style="color: black;"/> <br /> 
									<input type="text" readonly="readonly" id="D" name="D" style="color: black;"/> <br /> 
									<input type="text" readonly="readonly" id="E" name="E" style="color: black;"/> <br />
									<input type="hidden" readonly="readonly" id="movie_no" name="movie_no" style="color: black;"/><br /> 
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</form>



			<!-- /. ROW  -->


			<!--    
            <div class="row">
                <div class="col-md-12">
                <div class="col-md-4">
                    Advanced Tables
                    <div class="card">
                        <div class="card-action">
                             Advanced Tables
                        </div>
                        <div class="card-content">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                
                                    <thead>
                                        <tr>
                                       <th>MovieStore</th>
                                       <th></th>
                                   
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="odd gradeX">
                                            <td>Trident</td>
                                            <td>Internet Explorer 4.0</td>
                                       
                                        </tr>
                                        <tr class="even gradeC">
                                            <td>Trident</td>
                                            <td>Internet Explorer 5.0</td>
                                       
                                        </tr>
                                        <tr class="odd gradeA">
                                            <td>Trident</td>
                                            <td>Internet Explorer 5.5</td>
                                         
                                        </tr>
                                        <tr class="even gradeA">
                                            <td>Trident</td>
                                            <td>Internet Explorer 6</td>
                                      
                                        </tr>
                                        <tr class="odd gradeA">
                                            <td>Trident</td>
                                            <td>Internet Explorer 7</td>
                                         
                                        </tr>
                                        <tr class="even gradeA">
                                            <td>Trident</td>
                                            <td>AOL browser (AOL desktop)</td>
                                   
                                        </tr>
                                        <tr class="gradeA">
                                            <td>하이</td>
                                            <td>안녕</td>
                                
                                        </tr>
                                       
                                    </tbody>
                                </table>
                            </div>
                            </div>
                        </div>
                    </div>
                    End Advanced Tables
                </div>
            </div> -->



















			<footer>
				<div class="center">
					<br> <br> <br> <br> <br> <br> <br>
					<br> <br> <br> <br> <br> <br>
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