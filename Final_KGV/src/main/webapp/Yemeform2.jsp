<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Track Material Design Bootstrap Admin Template</title>

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

					<li><a href="table.jsp"
						class="active-menu waves-effect waves-dark"><i
							class="fa fa-table"></i> Responsive Tables</a></li>
					<li><a href="form.jsp" class="waves-effect waves-dark"><i
							class="fa fa-edit"></i> Forms </a></li>


					<li><a href="#" class="waves-effect waves-dark"><i
							class="fa fa-sitemap"></i> Multi-Level Dropdown<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="#">Second Level Link</a></li>
							<li><a href="#">Second Level Link</a></li>
							<li><a href="#">Second Level Link<span class="fa arrow"></span></a>
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
					<div class="card col-md-12">
						<!-- Advanced Tables -->
						<div class="col-md-2">
							<div class="card">

								<div class="card-content">
									<!--   <div class="table-responsive"> -->
									<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th colspan="2"><h3 style="background-color: gray;"
														align="center">Movie</h3></th>
												<!-- <th><h1 style="background-color: gray;" align="center">MovieStore</h1></th>
											<th><h1 style="background-color: gray;" align="center">schedule</h1></th> -->
											</tr>
										</thead>
										<tbody>
											<tr>
												<!-- <td style="width: 37.979166px;"></td> -->
												<td></td>
												<td>title</td>

											<!--   <td style="padding-top: 2px;"><div id="dataTables-example_filter" class="dataTables_filter">
                                            <label style="margin-bottom: 0px;">
                                            
                                            <input type="search" placeholder="Search" style="padding-top: 0px; padding-bottom: 0px;border-bottom-width: 0px;margin-bottom: 0px;" class="form-control input-sm" aria-controls="dataTables-example"></label>
                                            </div></td>
                                            <td  rowspan="8"> -->
												<%-- 
                                            <div class="date-picker" align="center">
                                            <input class="date-picker" type="text" style="text-align: center;background-color: orange;" value="">
                                           <input type="text" style="text-align: center;" value="${data }"></div>
                                            <!-- <input class="date-picker" type="text" value="2015-12-25"/> --></td>
                         --%>
												</tr>
										<tr>
											<td><img alt="" src="images/12.png"></td>
											<td>Trident</td>
											<!-- <td>Internet Explorer 5.0</td> -->
											
										</tr>
										<tr>
											<td><img alt="" src="images/12.png"></td>
											<td>Trident</td>
											<!-- <td>Internet Explorer 5.0</td> -->
											
										</tr>
										<tr>
											<td><img alt="" src="images/12.png"></td>
											<td>Trident</td>
											<!-- <td>Internet Explorer 5.0</td> -->
											
										</tr>
										<tr>
											<td><img alt="" src="images/12.png"></td>
											<td>Trident</td>
											<!-- <td>Internet Explorer 5.0</td> -->
											
										</tr>
										<tr>
											<td><img alt="" src="images/12.png"></td>
											<td>Trident</td>
											<!-- <td>Internet Explorer 5.0</td> -->
											
										</tr>
										<tr>
											<td><img alt="" src="images/12.png"></td>
											<td>Trident</td>
											<!-- <td>Internet Explorer 5.0</td> -->
											
										</tr>
										<tr>
											<td><img alt="" src="images/12.png"></td>
											<td>Trident</td>
											<!-- <td>Internet Explorer 5.0</td> -->
											
											
										</tr>
										
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
						<table class="table table-striped table-bordered table-hover" id="dataTables-example" >
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
										<tr class="gradeA"><td>Internet Explorer 5.0</td></tr> -->
										
										
										
										
										
										
										

                <div class="col-md-4">
                   
                    <div class="card">
                        <div class="card-action">
                         
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
              
            
										
										
										
										
										
										
										
										
										
										
										
										
										
										
										
										
										
										
										
										
										
										
										
										
										
										
										
										
										
										
										
										
										
										<!-- </tbody>
										</table>
										</div>
										</div> -->
										
							<div class="card-content"><!-- </div>
								</div>
							</div>
						</div> -->
<div class="col-md-6">
							<div class="card">
<div class="card-content">
						<table class="table table-striped table-bordered table-hover">
									<thead>
										<tr>
											
											 <th><h3 style="background-color: gray;" align="center">schedule</h3></th>
											
										</tr>
									</thead>
									<tbody>
										<tr>
										  <td >
												
                                            <div class="date-picker" align="center">
                                            <input class="date-picker" type="text" style="text-align: center;background-color: orange;" value="">
                                           <input type="text" style="text-align: center;" value="${day }"></div>
                                            <!-- <input class="date-picker" type="text" value="2015-12-25"/> --></td>
										</tr>
										</tbody>
										</table>
										</div>
										</div>
										</div>
										</div></div></div></div>
										
							<div class="card-content"><!-- </div>
								</div>
							</div>
				</div>
			</div> -->
		
	
					<div class="card col-md-12">
						<!-- Advanced Tables -->
						
					
												
												<div class="col-md-6">
							<div class="card">

								<div class="card-content">
								<table class="table table-striped table-bordered table-hover">
								<!-- <table class="table table-striped table-bordered table-hover" id="dataTables-example"> -->
								<thead>
											<tr>
												<th colspan="6"><h3 style="background-color: gray;"
														align="center">Time</h3></th>
												<!-- <th><h1 style="background-color: gray;" align="center">MovieStore</h1></th>
											<th><h1 style="background-color: gray;" align="center">schedule</h1></th> -->
											</tr>
										</thead>
										<tbody>
										<tr>
										<td colspan="6">Cinema</td>
										</tr>
										<tr>
										<td colspan="6">Cinema No</td>
										</tr>
										
										
										<!-- <th>
										<tr>No</tr></th> -->
										
										<tr>
										<th>No</th>
										<th><div style="text-align: center;">
														<input type="button" value="12:00">
													</div></th>
										<th><div style="text-align: center;">
														<input type="button" value="14:00">
													</div></th>
										<th><div style="text-align: center;">
														<input type="button" value="15:30">
													</div></th>
										<th><div style="text-align: center;">
														<input type="button" value="16:50">
													</div></th>
										<th><div style="text-align: center;">
														<input type="button" value="19:00">
													</div></th>
													
										</tr>
										</tbody>
								</table>
								</div>
								</div>
								</div>
								
									<div class="col-md-6">
							<div class="card">

								<div class="card-content">
								<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th colspan="6"><h3 style="background-color: gray;"
														align="center">Select</h3></th>
												<!-- <th><h1 style="background-color: gray;" align="center">MovieStore</h1></th>
											<th><h1 style="background-color: gray;" align="center">schedule</h1></th> -->
											</tr>
										</thead>
										<tbody>
											<tr>
												<th>성인</th>
										<th ><div style="text-align: center;">
														<input type="button" value="0">
													</div></th>
										<th><div style="text-align: center;">
														<input type="button" value="1">
													</div></th>
										<th><div style="text-align: center;">
														<input type="button" value="2">
													</div></th>
										<th><div style="text-align: center;">
														<input type="button" value="3">
													</div></th>
										<th><div style="text-align: center;">
														<input type="button" value="4">
													</div></th>
												</tr>
												<tr>
												<th>학생</th>
										<th ><div style="text-align: center;">
														<input type="button" value="0">
													</div></th>
										<th><div style="text-align: center;">
														<input type="button" value="1">
													</div></th>
										<th><div style="text-align: center;">
														<input type="button" value="2">
													</div></th>
										<th><div style="text-align: center;">
														<input type="button" value="3">
													</div></th>
										<th><div style="text-align: center;">
														<input type="button" value="4">
													</div></th>
												</tr>
												<tr>
												<th colspan="6" ><div
														style="text-align: center;">
														<input type="submit" value="submit">
													</div></th>
											
												</tr>
												</tbody>
												</table>
												</div>
												</div>
												</div>
												
												
												
												</div>
												</div></div>
											
											
											
												
		<!-- /. ROW  -->




 <div id="page-inner"> 
               
            <div class="row">
                <div class="col-md-12">
                <div class="col-md-4">
                    <!-- Advanced Tables -->
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
                    <!--End Advanced Tables -->
                </div>
            </div>
                                    


















		<footer>
			<p>
				Shared by <i class="fa fa-love"></i><a
							href="https://bootstrapthemes.co">BootstrapThemes</a>
			</p>
		</footer>
	</div>
	<!-- /. PAGE INNER  -->
	</div>
	<!-- /. PAGE WRAPPER  -->
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
