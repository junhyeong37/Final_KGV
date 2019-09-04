<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>http://www.blueb.co.kr</title>

    <link rel="stylesheet" href="assets/css/slide.css?after" type="text/css" />
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet" />
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
	
	<!-- <style type="text/css">
	
	@media(max-width:768px) {
	.imghidden{
	display: none;
	}
	div.carousel-inner table.table-size{
	height: 10px;
	}
	}
	
	
	</style> -->
	
	<SCRIPT type="text/javascript"> 

function mediaWin(img){ 
winW=840;//새창의 너비 
winH=470;//새창의 높이 
stringa="width="+winW+",height="+winH; 
popup=window.open("","my",stringa); 
popup.document.open(); 
popup.document.write("<HTML><HEAD>"); 
popup.document.write("<TITLE>예고편</TITLE>"); 
popup.document.write("<c:if test='${not empty mlist }'><c:forEach var='movie' items='${mlist }' varStatus='status'><embed SRC='${movie.movie_preview}' style=width:100%;height:450px;></embed>"); 
popup.document.write("</c:forEach></c:if>")
/* popup.document.write("</HEAD><BODY  oncontextmenu='return false' onselectstart='return false' ondragstart='return false'>"); 
popup.document.write("<embed SRC=https://www.youtube.com/embed/6WQNr2wYDRA style=width:100%;height:450px;></embed>");  */
/* popup.document.write("<HR><INPUT TYPE='button' VALUE='창닫기' " + 
"onClick='window.close()'>");  */
popup.document.write("</CENTER>"); 
popup.document.write("</BODY></HTML>"); 
popup.document.close(); 
} 
//  --> 
</script> 
	
	
	</head>

<body>


<div id="myCarousel" class="carousel slide" data-ride="carousel" style="height: 100%"> 
	
	<!--페이지-->
	
	<ol class="carousel-indicators" style="position: sticky;">
	<!-- 수정 전 slide 09.04 -->
		<!-- <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li> -->
		
		
	
		<li data-target="#myCarousel" data-slide-to="0" class="active" style="visibility: hidden; float: left;">
		<img alt="" class="imghidden" src="assets/img/kim.jpg" style="width: 100px;visibility: visible; float: right; margin-top: 650px;"></li>
		<li data-target="#myCarousel" data-slide-to="1" style="visibility: hidden; float: left; padding-left: 100px;">
		<img alt="" class="imghidden" src="assets/img/kim5.jpg" style="width: 100px;visibility: visible; float: right; margin-top: 650px;"></li>
		<li data-target="#myCarousel" data-slide-to="2" style="visibility: hidden; float: left; padding-left: 100px;">
		<img alt="" class="imghidden" src="assets/img/kim2.jpg" style="width: 100px;visibility: visible; float: right; margin-top: 650px;" ></li>
		<li data-target="#myCarousel" data-slide-to="3" style="visibility: hidden; float: left; padding-left: 100px;">
		<img alt="" class="imghidden" src="assets/img/kim3.jpg" style="width: 100px;visibility: visible; float: right; margin-top: 650px;" ></li>
		<li data-target="#myCarousel" data-slide-to="4" style="visibility: hidden; float: left; padding-left: 100px;">
		<img alt="" class="imghidden" src="assets/img/kim4.jpg" style="width: 100px;visibility: visible; float: right; margin-top: 650px;" ></li>
	</ol>
	
	<!--페이지-->

	<div class="carousel-inner" style="height: 100%; background-color: #0a0a0a;">
		<!--슬라이드1--> 
		<div class="item active kgvsm3"> 
		
			<table class="kgvsm2"><tbody>
			<tr><td height="20px;"></tr><tr>
		<td width="20%"></td>
		<!-- <td width="10"><h1>상  영  작</h1></td> -->
		<td style="text-align: center;">
		
			<A HREF="javascript:mediaWin('a.asx')">
			<!-- <a href="MovieSearchData.do?movie_photo=assets/img/movie0.jpg"> -->
			<img src="assets/img/kim9.jpg" class="img-mobile" style="margin:auto;" data-src="" alt="Second slide">
			
			</a></td>
			
			<td width="20%"></td></tr>
			<tr><td height="100px;"></td></tr>

			</tbody>
			</table>
		
		</div>
		
		
		<div class="item kgvsm3"> 
		
			<table class="kgvsm2"><tbody>
			<tr><td height="20px;"></tr><tr>
		<td width="20%"></td>
		<!-- <td width="10"><h1>상  영  작</h1></td> -->
		<td style="text-align: center;">
		
			<a href="MovieSearchData.do?movie_photo=assets/img/movie0.jpg">
			<img src="assets/img/kim.jpg" class="img-mobile" style="margin:auto;" data-src="" alt="Second slide">
			
			</a></td>
			
			<td width="20%"></td></tr>
			<tr><td height="100px;"></td></tr>

			</tbody>
			</table>
		
		</div>
		
		
		<div class="item kgvsm3"> 
		
			<table class="kgvsm2"><tbody>
			<tr><td height="20px;"></tr><tr>
		<td width="20%"></td>
		<!-- <td width="10"><h1>상  영  작</h1></td> -->
		<td style="text-align: center;">
		
			<a href="MovieSearchData.do?movie_photo=assets/img/movie0.jpg">
			<img src="assets/img/kim2.jpg" class="img-mobile" style="margin:auto;" data-src="" alt="Second slide">
			
			</a></td>
			
			<td width="20%"></td></tr>
			<tr><td height="100px;"></td></tr>

			</tbody>
			</table>
		
		</div>
		
		
		<div class="item kgvsm3"> 
		
			<table class="kgvsm2"><tbody>
			<tr><td height="20px;"></tr><tr>
		<td width="20%"></td>
		<!-- <td width="10"><h1>상  영  작</h1></td> -->
		<td style="text-align: center;">
		
			<a href="MovieSearchData.do?movie_photo=assets/img/movie0.jpg">
			<img src="assets/img/kim3.jpg" class="img-mobile" style="margin:auto;" data-src="" alt="Second slide">
			
			</a></td>
			
			<td width="20%"></td></tr>
			<tr><td height="100px;"></td></tr>

			</tbody>
			</table>
		
		</div>
		
		
		<div class="item kgvsm3"> 
		
			<table class="kgvsm2"><tbody>
			<tr><td height="20px;"></tr><tr>
		<td width="20%"></td>
		<!-- <td width="10"><h1>상  영  작</h1></td> -->
		<td style="text-align: center;">
		
			<a href="MovieSearchData.do?movie_photo=assets/img/movie0.jpg">
			<img src="assets/img/kim4.jpg" class="img-mobile" style="margin:auto;" data-src="" alt="Second slide">
			
			</a></td>
			
			<td width="20%"></td></tr>
			<tr><td height="100px;"></td></tr>

			</tbody>
			</table>
		
		</div>

		
		
	</div>

	<a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> 
	<a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> 
</div>
  

</body>
</html>

