<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>KGV 예매 홈</title>


<style>
.scrolltbody {
   display: block;
   height: 450px;
   width: auto;
   border-collapse: collapse;
   overflow: scroll;
}


/* 09.09 리뷰페이지 css수정  */
label {
visibility: hidden;
}

div.dataTables_filter {
width: 0px;
height: 0px;
}

tbody.tdsizesm1 > tr > td{

}
</style>

<script type="text/javascript">
   function mclick1() {

      var movie1 = document.getElementById('movie1');
      movie1.innerText = "마우스이벤트1";

   }

   function mclick2() {

      var movie2 = document.getElementById('movie2');
      movie2.innerText = "마우스이벤트2";

   }

   function mclick3() {

      var movie3 = document.getElementById('movie3');
      movie3.innerText = "마우스이벤트3";

   }

   function mclick4() {

      var movie4 = document.getElementById('movie4');
      movie4.innerText = "마우스이벤트4";

   }

   function mclick5() {

      var movie5 = document.getElementById('movie5');
      movie5.innerText = "마우스이벤트5";

   }

   function mclick6() {

      var movie6 = document.getElementById('movie6');
      movie6.innerText = "마우스이벤트6";

   }
   function mclick7() {

      var movie7 = document.getElementById('movie7');
      movie7.innerText = "마우스이벤트7";

   }
   function mclick8() {

      var movie8 = document.getElementById('movie8');
      movie8.innerText = "마우스이벤트8";

   }
   function mclick9() {

      var movie9 = document.getElementById('movie9');
      movie9.innerText = "마우스이벤트9";

   }
   function mclick10() {

      var movie10 = document.getElementById('movie10');
      movie10.innerText = "마우스이벤트10";

   }
   function mclick11() {

      var movie11 = document.getElementById('movie11');
      movie11.innerText = "마우스이벤트11";

   }
   function mclick12() {

      var movie12 = document.getElementById('movie12');
      movie12.innerText = "마우스이벤트12";

   }
   function mclick13() {

      var movie13 = document.getElementById('movie13');
      movie13.innerText = "마우스이벤트13";

   }
   function mclick14() {

      var movie14 = document.getElementById('movie14');
      movie14.innerText = "마우스이벤트14";

   }
</script>







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

               <li><a class="waves-effect waves-dark"
                  href="sdu_index_navbar.jsp"><i class="fa fa-dashboard"></i> 메인</a>
               </li>
               <!-- <li>
                        <a href="sdu_movie.jsp" class="waves-effect waves-dark"><i class="fa fa-desktop"></i> 영화</a>
                    </li> -->

               <li><a href="sdu_reserv.jsp"
                  class="active-menu waves-effect waves-dark"><i
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

         <div id="page-inner" style="background-color: white;">
            <div class="row">
            <div class="card col-md-12" style="background-color: black;" >
            <div class="col-md-3"></div>
               <div class="col-md-6">
                  <div class="card">
                     <div class="card-image" style="background-color: black;">
                        <div class="video" style="margin-bottom: 0px;">
                           <iframe width="50%" height="60%"
                              src="https://www.youtube.com/embed/A__FOXFNemU"   frameborder="0" > </iframe>
<!-- style="width: 70%; height: 70%;" -->
                        </div>
                     </div>


                  </div>

               </div>
               <div class="col-md-3"></div>
               
            </div></div>
         </div>





         <div id="page-inner">
            <div class="row">

               <div class="card col-md-12">

                  <div class="col-md-1"></div>
                  <div class="col-md-4">
                     <div class="card">
                        <div class="card-action center">기생충</div>
                        <div class="card-content">
                           <a href="sdu_movie_info.jsp"><img class="" width="100%"
                              height="495px" alt="poster" src="assets/img/기생충.jpg"></a>


                           <div class="clearBoth">
                              <br />
                           </div>

                        </div>
                     </div>


                  </div>
                  <div class="col-md-1"></div>

                  <div class="col-md-6">
                     <div class="card">
                        <div class="card-action center"></div>
                        <div class="card-content">


                           <div class="alert alert-success col-md-12">
                              <table>
                                 <tr>
                                    <td><strong>만족도</strong></td>
                                    <td class="right">98%</td>
                                 </tr>
                              </table>

                           </div>

                           <div class="alert alert-info col-md-12">
                              <table>
                                 <tr>
                                    <td><strong>영화등급</strong></td>
                                    <td class="right"><i class="material-icons prefix">account_circle</i></td>
                                 </tr>
                              </table>

                           </div>

                           <div class="alert alert-success col-md-12">
                              <table>
                                 <tr>
                                    <td><strong>장르</strong></td>
                                    <td class="right">드라마</td>
                                 </tr>
                              </table>

                           </div>

                           <div class="alert alert-info col-md-12">
                              <table>
                                 <tr>
                                    <td><strong>감독</strong></td>
                                    <td class="right">봉준호</td>
                                 </tr>
                              </table>

                           </div>


                           <div class="alert alert-success col-md-12">
                              <table>
                                 <tr>
                                    <td><strong>배우</strong></td>
                                    <td class="right">박소담</td>
                                 </tr>
                              </table>

                           </div>

                           <div class="alert alert-info col-md-12">
                              <table>
                                 <tr>
                                    <td><strong>상영시간</strong></td>
                                    <td class="right">131분</td>
                                 </tr>
                              </table>

                           </div>

                           <div class="alert alert-success col-md-12">
                              <table>
                                 <tr>
                                    <td><strong>개봉일</strong></td>
                                    <td class="right">2019-08-23</td>
                                 </tr>
                              </table>

                           </div>

                           <div class="clearBoth">
                              <br />
                           </div>

                        </div>
                     </div>


                  </div>


                  <div class="col-md-12">
                     <div class="card">
                        <div class="card-action center"></div>
                        <div class="card-content">


                           <div class="alert alert-success col-md-12">
                              <strong>줄거리</strong> <br> 기생충은 너무너무 재밌어요 db에서 이런거 받아와야 되요

                           </div>


                           <div class="clearBoth">
                              <br />
                           </div>

                        </div>
                     </div>


                  </div>



               </div>
            </div>


            <div class="center">
               <a
                  class="waves-effect waves-light btn blue-grey darken-4 white-tex"
                  href="sdu_reserv.jsp"> 예매하기 </a>
                  
               <a class="waves-effect waves-light btn blue-grey darken-4 white-tex"
               href="sdu_review_input.jsp"> 리뷰 작성 하기 </a>    

            </div>











            <div class="row">
            <div class="card col-md-12" style="height: 200px; padding-top: 15px;">
            <div class="col-md-1"></div>
            <div class="col-md-10" style="">
            <p style="font-size: x-large; font-weight: bold;">영화 리뷰</p>
            <form action="">
            <textarea name="review_text" style="height:100px; background-color: #f0f8ffc4;"></textarea>
            <input type="submit" value="작성" s>
            </form>
            </div>
            <div class="col-md-1"></div>
            </div>
               <div class="card col-md-12">
                  <!-- Advanced Tables -->
                  
                  <div class="col-md-1"></div>
                  <div class="col-md-10">

                  <!--    <div class="card"> -->

                        <div class="card-content" style="text-align: center; padding-left: 0px; padding-right: 0px;">
                           <div class="table-responsive" style="height: 420px;">

                              <table class="table table-striped table-bordered table-hover"
                                 id="dataTables-example">

                                 <thead>
                                    <tr>
                                       <th style="visibility: hidden;"></th>
                                       <th style="visibility: hidden;"></th>
                                       <th style="visibility: hidden;"></th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                    <tr class="odd gradeX">
                                       <td style="width: 15%;">ID</td>
                                       <td>리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰</td>
                                    <td  style="width: 20%;">작성일</td>
                                    </tr>
                                    <tr class="odd gradeX">
                                       <td>ID</td>
                                       <td>리뷰</td>
                                    <td>작성일</td>
                                    </tr>
                                    <tr class="odd gradeX">
                                       <td>ID</td>
                                       <td>리뷰</td>
                                    <td>작성일</td>
                                    </tr>
                                    <tr class="odd gradeX">
                                       <td>ID</td>
                                       <td>리뷰</td>
                                    <td>작성일</td>
                                    </tr>
                                    <tr class="odd gradeX">
                                       <td>ID</td>
                                       <td>리뷰</td>
                                    <td>작성일</td>
                                    </tr>
                                    <tr class="odd gradeX">
                                       <td>ID</td>
                                       <td>리뷰</td>
                                    <td>작성일</td>
                                    </tr>
                                    <tr class="odd gradeX">
                                       <td>ID</td>
                                       <td>리뷰</td>
                                    <td>작성일</td>
                                    </tr>
                                    <tr class="odd gradeX">
                                       <td>ID</td>
                                       <td>리뷰</td>
                                    <td>작성일</td>
                                    </tr>
                                    <tr class="odd gradeX">
                                       <td>ID</td>
                                       <td>리뷰</td>
                                    <td>작성일</td>
                                    </tr>
                                    <tr class="odd gradeX">
                                       <td>ID</td>
                                       <td>리뷰</td>
                                    <td>작성일</td>
                                    </tr>
                                    <tr class="odd gradeX">
                                       <td>ID</td>
                                       <td>리뷰</td>
                                    <td>작성일</td>
                                    </tr>
                                    <tr class="odd gradeX">
                                       <td>ID</td>
                                       <td>리뷰</td>
                                    <td>작성일</td>
                                    </tr>

                                 
                                 </tbody>
                              </table>
                           </div>
                        </div>
                     </div>
                  <!-- </div> -->
                  <div class="col-md-1"></div>
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