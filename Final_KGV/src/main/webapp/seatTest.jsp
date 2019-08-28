<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Target Material Design Bootstrap Admin Template</title>
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
<link rel="stylesheet" href="assets/css/seat.css">




<style>
/* 
  media screen,projection
  [type="checkbox"]+label {
	position: relative;
	padding-left: 20px;
	cursor: pointer;
	display: inline-block;
	height: 25px;
	line-height: 25px;
	font-size: 1rem;
	-webkit-user-select: none;
	-moz-user-select: none;
	-khtml-user-select: none;
	-ms-user-select: none
	
	
	box-sizing: border-box; 
    border-right: 1px solid white;
    background-color: #dfe41b;
    min-width: var(--seat-size);
    min-height: var(--seat-size);
    border-radius: 0.5rem 0.5rem 0 0;
    text-align: center;
}

[type="checkbox"]+label:before, [type="checkbox"]:not (.filled-in )+label:after
	{
	content: ''; 
	position: absolute;
	top: 0;
	left: 0;
	width: 18px;
	height: 18px;
	z-index: 0;
	border: 2px solid #5a5a5a;
	border-radius: 1px;
	margin-top: 2px;
	transition: .2s
} */

   :root {
  --seat-size: 1.5rem;
  --seats-per-row: 10;
}

#selected-seats {
  min-width: calc( var(--seat-size) * var( --seats-per-row ) );
  max-width: calc( var(--seat-size) * var( --seats-per-row ) );
  margin: 0 auto;
}

#seating-plan {
  padding-top: 2rem;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-wrap: wrap;
  min-width: calc( var(--seat-size) * var( --seats-per-row ) );
  max-width: calc( var(--seat-size) * var( --seats-per-row ) );
  margin: 0 auto;
}

.seat label {
  position:static;
  box-sizing: border-box;
  border-right: 1px solid white;
  cursor: pointer;
  display: inline-block;
  background-color: blue;
  color: white;
  font-size: 0.8rem;
  min-width: var(--seat-size);
  min-height: var(--seat-size);
  border-radius: 0.5rem 0.5rem 0 0;
  text-align: center;
}
.seat [type=checkbox] {

  display: none;
}
.seat [type=checkbox]:checked ~ label {
 
  background-color: green;
  font-weight: bold;
}

.seat [type=checkbox]:checked+label:before { 
  visibility: hidden;
}
.seat [type=checkbox]:checked+label:after { 
  visibility: hidden;
}  
.seat [type=checkbox]:not(.filled-in)+label:after { 
  visibility: hidden;
}

[type="checkbox"]+label:before, [type="checkbox"]:not(.filled-in)+label:after{
visibility: hidden;
}

#selected-seats legend {
	font-size: 20px;
	text-align: center;
}
</style>



<script>
  window.console = window.console || function(t) {};
</script>
<script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>




</head>

<body translate="no">
	<div id="wrapper">
		<nav class="navbar navbar-default top-navbar" role="navigation">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle waves-effect waves-dark"
					data-toggle="collapse" data-target=".sidebar-collapse">
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
		</div>
		<!-- Dropdown Structure -->
		<ul id="dropdown1" class="dropdown-content">
			<li><a href="#"><i class="fa fa-user fa-fw"></i> My Profile</a>
			</li>
			<li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a></li>
			<li><a href="#"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
			</li>
		</ul>
		<ul id="dropdown2" class="dropdown-content w250">
			<li>
				<div>
					<i class="fa fa-comment fa-fw"></i> New Comment <span
						class="pull-right text-muted small">4 min</span>
				</div> </a>
			</li>
			<li class="divider"></li>
			<li>
				<div>
					<i class="fa fa-twitter fa-fw"></i> 3 New Followers <span
						class="pull-right text-muted small">12 min</span>
				</div> </a>
			</li>
			<li class="divider"></li>
			<li>
				<div>
					<i class="fa fa-envelope fa-fw"></i> Message Sent <span
						class="pull-right text-muted small">4 min</span>
				</div> </a>
			</li>
			<li class="divider"></li>
			<li>
				<div>
					<i class="fa fa-tasks fa-fw"></i> New Task <span
						class="pull-right text-muted small">4 min</span>
				</div> </a>
			</li>
			<li class="divider"></li>
			<li>
				<div>
					<i class="fa fa-upload fa-fw"></i> Server Rebooted <span
						class="pull-right text-muted small">4 min</span>
				</div> </a>
			</li>
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
		<nav class="navbar-default navbar-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">

					<li><a class="active-menu waves-effect waves-dark"
						href="Joinform2.jsp"><i class="fa fa-dashboard"></i> Dashboard</a></li>
					<li><a href="ui-elements.jsp" class="waves-effect waves-dark"><i
							class="fa fa-desktop"></i> UI Elements</a></li>
					<li><a href="chart.jsp" class="waves-effect waves-dark"><i
							class="fa fa-bar-chart-o"></i> Charts</a></li>
					<li><a href="tab-panel.jsp" class="waves-effect waves-dark"><i
							class="fa fa-qrcode"></i> Tabs & Panels</a></li>

					<li><a href="table.jsp" class="waves-effect waves-dark"><i
							class="fa fa-table"></i> Responsive Tables</a></li>
					<li><a href="form.jsp" class="waves-effect waves-dark"><i
							class="fa fa-edit"></i> Forms </a></li>


					<li><a href="#" class="waves-effect waves-dark"><i
							class="fa fa-sitemap"></i> Multi-Level Dropdown<span>
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
							class="fa fa-fw fa-file"></i> Empty  Page</a></li>
				</ul>

			</div>

		</nav>
		<!-- /. NAV SIDE  -->

<!-- 			<div class="gong">
			</div> -->




		<div id="page-wrapper">
		<div id="page-inner" style="padding-left: 0px;padding-right: 0px;"> 






<div id="row">
<div class="card col-md-12">
						<!-- Advanced Tables -->
		<div class="card-content">
		<h3 style="background-color: gray;">좌석선택</h3>
<!-- <div class="wrapper">  -->
 <div class="container col-md-6" style="padding-left: 0px;"> 
 <div class="card" style="height: 370px;">
    <div id="seating-plan" style="--seats-per-row: 20;">
      <!--.seat*n>input#seat-$[type=checkbox]+label[for=seat-$]{$}-->
      
      <div id="selected-seats" style="text-align: center;" >
      <fieldset>
        <legend style="background-color: gray;">Screen</legend>
        
      </fieldset>
     <!--  <button id="clearAllButton" type="button">Clear All</button> -->
    </div>
    
    
      <div class="seat"><input type="checkbox" id="seat-1"><label for="seat-1">1</label></div>
      <div class="seat"><input type="checkbox" id="seat-2"><label for="seat-2">2</label></div>
      <div class="seat"><input type="checkbox" id="seat-3"><label for="seat-3">3</label></div>
      <div class="seat"><input type="checkbox" id="seat-4"><label for="seat-4">4</label></div>
      <div class="seat"><input type="checkbox" id="seat-5"><label for="seat-5">5</label></div>
      <div class="seat"><input type="checkbox" id="seat-6"><label for="seat-6">6</label></div>
      <div class="seat"><input type="checkbox" id="seat-7"><label for="seat-7">7</label></div>
      <div class="seat"><input type="checkbox" id="seat-8"><label for="seat-8">8</label></div>
      <div class="seat"><input type="checkbox" id="seat-9"><label for="seat-9">9</label></div>
      <div class="seat"><input type="checkbox" id="seat-10"><label for="seat-10">10</label></div>
      <div class="seat"><input type="checkbox" id="seat-11"><label for="seat-11">11</label></div>
      <div class="seat"><input type="checkbox" id="seat-12"><label for="seat-12">12</label></div>
      <div class="seat"><input type="checkbox" id="seat-13"><label for="seat-13">13</label></div>
      <div class="seat"><input type="checkbox" id="seat-14"><label for="seat-14">14</label></div>
      <div class="seat"><input type="checkbox" id="seat-15"><label for="seat-15">15</label></div>
      <div class="seat"><input type="checkbox" id="seat-16"><label for="seat-16">16</label></div>
      <div class="seat"><input type="checkbox" id="seat-17"><label for="seat-17">17</label></div>
      <div class="seat"><input type="checkbox" id="seat-18"><label for="seat-18">18</label></div>
      <div class="seat"><input type="checkbox" id="seat-19"><label for="seat-19">19</label></div>
      <div class="seat"><input type="checkbox" id="seat-20"><label for="seat-20">20</label></div>
      <div class="seat"><input type="checkbox" id="seat-21"><label for="seat-21">21</label></div>
      <div class="seat"><input type="checkbox" id="seat-22"><label for="seat-22">22</label></div>
      <div class="seat"><input type="checkbox" id="seat-23"><label for="seat-23">23</label></div>
      <div class="seat"><input type="checkbox" id="seat-24"><label for="seat-24">24</label></div>
      <div class="seat"><input type="checkbox" id="seat-25"><label for="seat-25">25</label></div>
      <div class="seat"><input type="checkbox" id="seat-26"><label for="seat-26">26</label></div>
      <div class="seat"><input type="checkbox" id="seat-27"><label for="seat-27">27</label></div>
      <div class="seat"><input type="checkbox" id="seat-28"><label for="seat-28">28</label></div>
      <div class="seat"><input type="checkbox" id="seat-29"><label for="seat-29">29</label></div>
      <div class="seat"><input type="checkbox" id="seat-30"><label for="seat-30">30</label></div>
      <div class="seat"><input type="checkbox" id="seat-31"><label for="seat-31">31</label></div>
      <div class="seat"><input type="checkbox" id="seat-32"><label for="seat-32">32</label></div>
      <div class="seat"><input type="checkbox" id="seat-33"><label for="seat-33">33</label></div>
      <div class="seat"><input type="checkbox" id="seat-34"><label for="seat-34">34</label></div>
      <div class="seat"><input type="checkbox" id="seat-35"><label for="seat-35">35</label></div>
      <div class="seat"><input type="checkbox" id="seat-36"><label for="seat-36">36</label></div>
      <div class="seat"><input type="checkbox" id="seat-37"><label for="seat-37">37</label></div>
      <div class="seat"><input type="checkbox" id="seat-38"><label for="seat-38">38</label></div>
      <div class="seat"><input type="checkbox" id="seat-39"><label for="seat-39">39</label></div>
      <div class="seat"><input type="checkbox" id="seat-40"><label for="seat-40">40</label></div>
     <!--  <div class="seat"><input type="checkbox" id="seat-41"><label for="seat-41">41</label></div>
      <div class="seat"><input type="checkbox" id="seat-42"><label for="seat-42">42</label></div>
      <div class="seat"><input type="checkbox" id="seat-43"><label for="seat-43">43</label></div>
      <div class="seat"><input type="checkbox" id="seat-44"><label for="seat-44">44</label></div>
      <div class="seat"><input type="checkbox" id="seat-45"><label for="seat-45">45</label></div>
      <div class="seat"><input type="checkbox" id="seat-46"><label for="seat-46">46</label></div>
      <div class="seat"><input type="checkbox" id="seat-47"><label for="seat-47">47</label></div>
      <div class="seat"><input type="checkbox" id="seat-48"><label for="seat-48">48</label></div>
      <div class="seat"><input type="checkbox" id="seat-49"><label for="seat-49">49</label></div>
      <div class="seat"><input type="checkbox" id="seat-50"><label for="seat-50">50</label></div>
      <div class="seat"><input type="checkbox" id="seat-51"><label for="seat-51">51</label></div>
      <div class="seat"><input type="checkbox" id="seat-52"><label for="seat-52">52</label></div>
      <div class="seat"><input type="checkbox" id="seat-53"><label for="seat-53">53</label></div>
      <div class="seat"><input type="checkbox" id="seat-54"><label for="seat-54">54</label></div>
      <div class="seat"><input type="checkbox" id="seat-55"><label for="seat-55">55</label></div>
      <div class="seat"><input type="checkbox" id="seat-56"><label for="seat-56">56</label></div>
      <div class="seat"><input type="checkbox" id="seat-57"><label for="seat-57">57</label></div>
      <div class="seat"><input type="checkbox" id="seat-58"><label for="seat-58">58</label></div>
      <div class="seat"><input type="checkbox" id="seat-59"><label for="seat-59">59</label></div>
      <div class="seat"><input type="checkbox" id="seat-60"><label for="seat-60">60</label></div>
      <div class="seat"><input type="checkbox" id="seat-61"><label for="seat-61">61</label></div>
      <div class="seat"><input type="checkbox" id="seat-62"><label for="seat-62">62</label></div>
      <div class="seat"><input type="checkbox" id="seat-63"><label for="seat-63">63</label></div>
      <div class="seat"><input type="checkbox" id="seat-64"><label for="seat-64">64</label></div>
      <div class="seat"><input type="checkbox" id="seat-65"><label for="seat-65">65</label></div>
      <div class="seat"><input type="checkbox" id="seat-66"><label for="seat-66">66</label></div>
      <div class="seat"><input type="checkbox" id="seat-67"><label for="seat-67">67</label></div>
      <div class="seat"><input type="checkbox" id="seat-68"><label for="seat-68">68</label></div>
      <div class="seat"><input type="checkbox" id="seat-69"><label for="seat-69">69</label></div>
      <div class="seat"><input type="checkbox" id="seat-70"><label for="seat-70">70</label></div>
      <div class="seat"><input type="checkbox" id="seat-71"><label for="seat-71">71</label></div>
      <div class="seat"><input type="checkbox" id="seat-72"><label for="seat-72">72</label></div>
      <div class="seat"><input type="checkbox" id="seat-73"><label for="seat-73">73</label></div>
      <div class="seat"><input type="checkbox" id="seat-74"><label for="seat-74">74</label></div>
      <div class="seat"><input type="checkbox" id="seat-75"><label for="seat-75">75</label></div>
      <div class="seat"><input type="checkbox" id="seat-76"><label for="seat-76">76</label></div>
      <div class="seat"><input type="checkbox" id="seat-77"><label for="seat-77">77</label></div>
      <div class="seat"><input type="checkbox" id="seat-78"><label for="seat-78">78</label></div>
      <div class="seat"><input type="checkbox" id="seat-79"><label for="seat-79">79</label></div>
      <div class="seat"><input type="checkbox" id="seat-80"><label for="seat-80">80</label></div>
      <div class="seat"><input type="checkbox" id="seat-81"><label for="seat-81">81</label></div>
      <div class="seat"><input type="checkbox" id="seat-82"><label for="seat-82">82</label></div>
      <div class="seat"><input type="checkbox" id="seat-83"><label for="seat-83">83</label></div>
      <div class="seat"><input type="checkbox" id="seat-84"><label for="seat-84">84</label></div>
      <div class="seat"><input type="checkbox" id="seat-85"><label for="seat-85">85</label></div> -->
    </div>
  <!-- </div> -->
  <!-- <div class="container"> -->
    <div id="selected-seats" style="border: 2px;">
      <fieldset style="background-color: pink;">
        <legend style="background-color: pink;">선택한 좌석번호</legend>
        <div id="selected"></div>
      </fieldset>
     
    </div>
  </div> <!-- <div class="col-md-6"> end -->
  </div>
  <!-- 
  <div class="col-md-3">
							<div class="card">

								<div class="card-content" style="height: 540px;">
  
  
  <div class="card col-md-12" style="height: 400px;">
						Advanced Tables
		<div class="card-content">
		<h3 style="background-color: gray;">좌석선택</h3>
<div class="wrapper"> 
 <div class="container col-md-8" style="padding-left: 0px;"> 
  
  
  
   -->
  
  
  
  
 <div class="container col-md-4" style="padding-right: 0px;"> 
 <div class="card" style="height: 370px;">
<div class="card-content">


<table class="table table-striped table-bordered table-hover">
<tbody>
<tr>
<td style="background-color: black; text-align: center;"><img alt="" src="back.jpg" style="width: 50%;height: 100%;"></td>
</tr>

</tbody></table></div>

 </div>
 </div>
 
 <div class="container col-md-2" style="padding-left: 0px; padding-right: 0px;"> 
 <div class="card" style="height: 370px;">
<div class="card-content">


<table class="table table-striped table-bordered table-hover">
<tbody>
<tr>
<td>영화제목</td>
</tr>
<tr>
<td>극장이름</td>
</tr>
<tr><td>날짜</td></tr>
<tr><td>인원</td></tr>
<tr><td>좌석</td></tr>
<tr><td>금액</td></tr>
<tr><td><div><input type="submit" value="이전단계" style="float: left;"><input type="submit" value="다음단계" style="float: right;"></div></td></tr>
</tbody></table></div>

       <button id="clearAllButton" type="button">Clear All</button> 
     
 </div>
 
 
 
 </div>
<!-- </div> -->
</div>




</div>
</div>
</div>
</div>








			<!-- </div>	 -->
			<div class="gong">
			</div>
			
			
			

			
				
								<div id="footer"><footer><div class="center">
					<br><br><br><br><br><br><br><br><br><br><br><br><br>
						
					</div>
				</footer></div>
				
				
			</div>
			<!-- page-wrapper -end -->
		 <!-- </div>  -->
		<!-- wrapper-end -->




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
    
    <!-- seat -->
    <script src="assets/js/seat.js"></script>
</body>

</html>