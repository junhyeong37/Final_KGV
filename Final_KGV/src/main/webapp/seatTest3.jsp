<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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


 div.container {
 padding-left:0px;
 padding-right: 0px;
 }
 
 div.card-content{
 padding-left: 0px;
 padding-right: 0px;
 }
 
 @media(max-width:768px) {
 #seating-plan {
 --seats-per-row:13;
 }
  label.seatsize100 {
     width:31px;
 } 
 #clearAllButton{
 padding-left:0px;
  padding-right:0px;
  font-size: 5px;
 }
 .clearButtonKSM{
 width: 40%;
 }
 
 }
 
 @media(min-width:768px) {
  #seating-plan {
 --seats-per-row:20;
 }
  label.seatsize100 { 
    width:47px;
    
    }
    #clearAllButton{
    font-size:12px;
    padding-left:0px;
    padding-right:0px;
    }
    .clearButtonKSM{
    width: 30%;
    }
    .clearButtonKSM2{
    
    }
 }
 
 




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
  background-color: #2196F3;
  color: white;
  font-size: 0.8rem;
  /* width: 47px; */
  min-width: var(--seat-size);
  min-height: var(--seat-size);
  border-radius: 0.5rem 0.5rem 0 0;
  text-align: center;
}
.seat [type=checkbox] {
  display: none;
}
.seat [type=checkbox]:checked ~ label {
 
  background-color: #69e869;
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
   window.console = window.console || function(t) {
   };
</script>
<script>
   <%-- if (document.location.search.match(/type=embed/gi)) {
      window.parent.postMessage("resize", "*");
   }
   
   var ulist=<%=session.getAttribute("ulist")%>

	if(ulist==null){
		alert("해당메뉴는 로그인이 필요한 메뉴입니다. 로그인 후 이용해주세요");
		location.href="sdu_login.jsp"
	}else{
		location.href="sdu_seat.jsp"
	} --%>
	function gogo() {
		alert("고고");
		location.replace("sdu_reserv2.jsp");
	}
</script>




</head>

<body translate="no">

	<script>
		//4개만 체크되게 하기
		var cnt1 = Number(${Z});
		var cnt2 = Number(${Y});

		function count_ck(obj) {

			var chkbox = document.getElementsByName("chk");

			var chkCnt = 0;

			for (var i = 0; i < chkbox.length; i++) {

				if (chkbox[i].checked) {

					chkCnt++;

				}

			}

			if (chkCnt > cnt1+cnt2) {

				alert("좌석 선택 더 이상 안됩니다.");
				

				obj.checked = false;

				return false;

			}

		}
	</script>









   <div id="wrapper">
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

      <!--/. NAV TOP  -->
      <nav class="navbar-default navbar-side" role="navigation">
         <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">

               <li><a class="active-menu waves-effect waves-dark"
                  href="sdu_index_navbar.jsp"><i class="fa fa-dashboard"></i> 메인</a>
               </li>


               <li><a href="sdu_reserv.jsp" class="waves-effect waves-dark"><i
                     class="fa fa-bar-chart-o"></i> 예매</a></li>

               <li><a href="#" class="waves-effect waves-dark"><i
                     class="fa fa-sitemap"></i> 영화<span class="fa arrow"></span></a>
                  <ul class="nav nav-second-level">
                     <li><a href="sdu_box_office.jsp">박스오피스 랭킹</a></li>
                     <li><a href="sdu_movie_search.jsp">영화검색</a></li>
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
               <li><a href="sdu_content.jsp" class="waves-effect waves-dark"><i
                     class="fa fa-desktop"></i> 고객센터</a></li>


            </ul>

         </div>

      </nav>
      <!-- /. NAV SIDE  -->

      <div id="page-wrapper">
         <div id="page-inner" style="padding-left: 0px; padding-right: 0px;">






            <div id="row">
<div class="card col-md-12">
                  <!-- Advanced Tables -->
      <div class="card-content" style="padding-left: 0px; padding-right: 0px;">
      <h3 style="background-color: gray;">좌석선택</h3>
<!-- <div class="wrapper">  -->
 <div class="container col-md-6" style="padding-left: 0px;"> 
 <div class="card" style="height: 370px; text-align: center;">
    <div id="seating-plan">
      <!--.seat*n>input#seat-$[type=checkbox]+label[for=seat-$]{$}-->
      
      <div id="selected-seats" style="text-align: center;" >
      <fieldset>
        <legend style="background-color: gray;">Screen</legend>
        
      </fieldset>
     <!--  <button id="clearAllButton" type="button">Clear All</button> -->
    </div>
    
 
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);" id="seat-1"><label class="seatsize100" for="seat-1" style="padding-left:0px;">1</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-2"><label class="seatsize100" for="seat-2" style="padding-left:0px;">2</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-3"><label class="seatsize100" for="seat-3" style="padding-left:0px;">3</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-4"><label class="seatsize100" for="seat-4" style="padding-left:0px;">4</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-5"><label class="seatsize100" for="seat-5" style="padding-left:0px;">5</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-6"><label class="seatsize100" for="seat-6" style="padding-left:0px;">6</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-7"><label class="seatsize100" for="seat-7" style="padding-left:0px;">1</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-8"><label class="seatsize100" for="seat-8" style="padding-left:0px;">2</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-9"><label class="seatsize100" for="seat-9" style="padding-left:0px;">3</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-10"><label class="seatsize100" for="seat-10" style="padding-left:0px;">4</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-11"><label class="seatsize100" for="seat-11" style="padding-left:0px;">5</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-12"><label class="seatsize100" for="seat-12" style="padding-left:0px;">6</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-13"><label class="seatsize100" for="seat-13" style="padding-left:0px;">1</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-14"><label class="seatsize100" for="seat-14" style="padding-left:0px;">2</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-15"><label class="seatsize100" for="seat-15" style="padding-left:0px;">3</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-16"><label class="seatsize100" for="seat-16" style="padding-left:0px;">4</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-17"><label class="seatsize100" for="seat-17" style="padding-left:0px;">5</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-18"><label class="seatsize100" for="seat-18" style="padding-left:0px;">6</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-19"><label class="seatsize100" for="seat-19" style="padding-left:0px;">1</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-20"><label class="seatsize100" for="seat-20" style="padding-left:0px;">2</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-21"><label class="seatsize100" for="seat-21" style="padding-left:0px;">3</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-22"><label class="seatsize100" for="seat-22" style="padding-left:0px;">4</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-23"><label class="seatsize100" for="seat-23" style="padding-left:0px;">5</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-24"><label class="seatsize100" for="seat-24" style="padding-left:0px;">6</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-25"><label class="seatsize100" for="seat-25" style="padding-left:0px;">1</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-26"><label class="seatsize100" for="seat-26" style="padding-left:0px;">2</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-27"><label class="seatsize100" for="seat-27" style="padding-left:0px;">3</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-28"><label class="seatsize100" for="seat-28" style="padding-left:0px;">4</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-29"><label class="seatsize100" for="seat-29" style="padding-left:0px;">5</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-30"><label class="seatsize100" for="seat-30" style="padding-left:0px;">6</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-31"><label class="seatsize100" for="seat-31" style="padding-left:0px;">1</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-32"><label class="seatsize100" for="seat-32" style="padding-left:0px;">2</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-33"><label class="seatsize100" for="seat-33" style="padding-left:0px;">3</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-34"><label class="seatsize100" for="seat-34" style="padding-left:0px;">4</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-35"><label class="seatsize100" for="seat-35" style="padding-left:0px;">5</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-36"><label class="seatsize100" for="seat-36" style="padding-left:0px;">6</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-37"><label class="seatsize100" for="seat-37" style="padding-left:0px;">1</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-38"><label class="seatsize100" for="seat-38" style="padding-left:0px;">2</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-39"><label class="seatsize100" for="seat-39" style="padding-left:0px;">3</label></div>
      <div class="seat"><input type="checkbox" name="chk" onClick="count_ck(this);"  id="seat-40"><label class="seatsize100" for="seat-40" style="padding-left:0px;">4</label></div>
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
    	<div class="waves-effect waves-light btn clearButtonKSM">
		<input type="button" value="좌석선택 다시하기" id="clearAllButton">
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
<td>영화제목 : ${A }</td>
</tr>
<tr>
<td>극장이름 : ${B }</td>
</tr>
<tr><td>날짜 : ${C }</td></tr>
<tr><td>인원 : ${E }</td></tr>
<tr><td><div id="selected" >좌석 </div></td></tr>
<tr><td>금액 : ${Z*10000 + Y*8000 }</td></tr>
<tr><td><div  class="waves-effect waves-light btn clearButtonKSM2">
<input type="submit" value="이전단계" style="float: left;"></div>
<div  class="waves-effect waves-light btn clearButtonKSM2">
<a href="javascript:gogo();">가자</a></div></td></tr>
</tbody></table></div>
     
 </div>
 

 
 </div>
<!-- </div> -->
</div>




</div>
</div>
            
            <footer>
               <div class="center">
                  <br> <br> <br> <br> <br> <br> <br>
                  <br> <br> <br> <br> <br> <br>
                  <%@include file="sdu_footer.jsp"%>
               </div>
            </footer>
            
            
         </div>
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
    
    <!-- seat -->
    <script src="assets/js/seat.js"></script>
</body>

</html>