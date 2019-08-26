<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width"  initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>Insert title here</title>
<style type="text/css">
@FONT-FACE {
	font-family: 'naBrush';
	src: url("test1/NanumSquareOTF_acB.otf");
}

span {
	display: inline-block;
	padding: 2px;
	
	text-align: center;
}

#span1 {
	width: 97%;
	height: 40%;
	margin: 10px;
}

#span2 {
	width: 97%;
	height: 35%;
	
	margin-left:auto; 
	margin-right:auto;
}

#span3 {
	width: 97%;
	height: 10%;
	margin: 10px;
	vertical-align:middle; 
}

#span4 {
	width: 97%;
	height: 80%;
	margin: 10px;
}

#span5 {
	width: 97%;
	height: 20%;
	margin: 10px;
}

#span6{    
    vertical-align:middle; 
    width:11%; height:50%;
} /* 파레트 span태그 */
#div1 {
	width: 48%;
	height: 95%;
	font-size: 0.6em;
	font-family: naBrush;
	/* border: 1px solid gold; */
	float: left;
}

#div2 {
	/* border: 1px solid gold; */
	float: right;
	width: 48%;
	height: 95%;
	font-size: 0.7em;
	font-family: naBrush;
}

#div3 {
	width: 100px;
	height: 30px;
}

#img1 {
	width: 20px;
	height: 20px;
	vertical-align: middle;
}

/* .grid {
	width: 70%;
	margin: 0 auto;
	/* background-color: dimgrey; */
	/* text-align: center; */
	/*inline-block의 장점은 폰트의 성질도 포함되고 있어서 text-align으로 정렬을 쉽게 할수가 있다.*/
} */

.grid_item {
	width: 5%;
	height: 100%;
	/* display: inline-block; /*이부분에 성질을 inline-block로 바꿔줘서 가로배치를 해줬다.*/ */
	vertical-align: top; /*밑에 4px 여백을 없에는것*/
}

/* .semi_item {
	width: 200px;
	height: 200px;
	display: inline-block;
	vertical-align: top;
} */

/* .grid_item.first {background-color: orange;}
.grid_item.two {background-color: yellow;}
.grid_item.third {background-color: royalblue;} */
.scale {
	/* transform: scale(0.9); */
	width:100%;
	-webkit-transform: scale(0.9);
	-moz-transform: scale(0.9);
	-ms-transform: scale(0.9);
	-o-transform: scale(0.9);
	transition: all 0.3s ease-in-out; /* 부드러운 모션을 위해 추가*/
}

.scale:hover {
	/* transform: scale(1.00); */
	-webkit-transform: scale(1.00);
	-moz-transform: scale(1.00);
	-ms-transform: scale(1.00);
	-o-transform: scale(1.00);
}

/* .img {
	width: 15%;
	height: 15%;
	overflow: hidden
} */

.btn_submit{
background_image:url('ppp1_2.png');
background-position: 0px 0px;
background-repeat: no-repeat;
width:40px;
height: 29px;
border: 0px;
cursor:pointer;

}


</style>
</head>
<body>

	<script language="javascript">
	
	
	</script>
    <%-- <form action="searchPallet.do?pname=${pvo.pname }"> --%>
	<div style="width: 1200px; height: 500px; margin: auto;">
		<div id="div1">
			<span id="span4"> <img alt=""
				src="${pvo.imgbig }" width="100%" height="100%">
				
			</span> 
			<span id="span5">SHARE YOUR COLORS: &nbsp; <a
				href="https://www.facebook.com/"><img id="img1"
					src="logo/facebook.png"></a> &nbsp; <a
				href="https://www.instagram.com/"><img id="img1"
					src="logo/instagram.png"></a> &nbsp; <a
				href="https://twitter.com/search-home?lang=ko"><img id="img1"
					src="logo/twitter.png"></a> &nbsp; <a
				href="https://www.google.com/"><img id="img1"
					src="logo/google.png"></a>
			</span>
		</div>
		
	
		
		<div id="div2" style="text-align: center;">
			<span id="span1">
			<!-- <img alt="" src="pallet_img/ppp1_1.png" width="45.86%" height="100%"> -->
			<img alt="" src="${pvo.imgsemi }" width="45.86%" height="100%">
			</span> 
			
			<span id="span2"> 
				
				
					<br><br>
					
					
					 
					<span id="span6">
               <!-- <input type="submit" name="pname" value="1" style="">  -->
               <a href="searchPallet.do?pname=1">
                  <img class="scale" name="pname" alt="" src="pallet_img/ppp1_2.png">
                  </a><br />                              
               </span>
               
                
               
               <!-- <span id="span6">
                  <input type="image" name="submit" value="1" src="pallet_img/ppp1_2.png" class="scale" > <br />                              
               </span> -->
               
               
               <span id="span6">
               <!-- <input type="submit" name="pname" value="2" style="">  -->
               <a href="searchPallet.do?pname=2">
                  <img class="scale" alt="" src="pallet_img/ppp2_2.png"></a><br />                              
               </span>
               
               <span id="span6">
               <!-- <input type="submit" name="pname" value="3" style="">  -->
               <a href="searchPallet.do?pname=3">
                  <img class="scale" alt="" src="pallet_img/ppp3_2.png">
                  </a><br />                              
               </span>
               
               
               <span id="span6">
               <!-- <input type="submit" name="pname" value="4" style="">  -->
               <a href="searchPallet.do?pname=4">
                  <img class="scale" alt="" src="pallet_img/ppp43.png"></a><br />                              
               </span>
               
               
               <span id="span6">
               <!-- <input type="submit" name="pname" value="5" style="">  -->
               <a href="searchPallet.do?pname=5">
                  <img class="scale" alt="" src="pallet_img/ppp53.png"></a><br />                              
               </span>
               
               <span id="span6">
               <!-- <input type="submit" name="pname" value="6" style="">  -->
               <a href="searchPallet.do?pname=6">
                  <img class="scale" alt="" src="pallet_img/ppp63.png"></a><br />                              
               </span>
               
               <span id="span6">
               <input type="submit" name="pname" value="0" style=""> 
                  <img class="scale" alt="" src="pallet_img/ppp0.jpg"><br />                              
               </span>
               
               <span id="span6">
               <input type="submit" name="pname" value="0" style=""> 
                  <img class="scale" alt="" src="pallet_img/ppp0.jpg"><br />                              
               </span>
               
               <span id="span6">
               <input type="submit" name="pname" value="0" style=""> 
                  <img class="scale" alt="" src="pallet_img/ppp0.jpg"><br />                              
               </span>
               
               <span id="span6">
               <input type="submit" name="pname" value="0" style=""> 
                  <img class="scale" alt="" src="pallet_img/ppp0.jpg"><br />                              
               </span>
               
               <span id="span6">
               <input type="submit" name="pname" value="0" style=""> 
                  <img class="scale" alt="" src="pallet_img/ppp0.jpg"><br />                                 
               </span>
               
               <span id="span6">
               <input type="submit" name="pname" value="0" style=""> 
                  <img class="scale" alt="" src="pallet_img/ppp0.jpg"><br />                              
               </span>
               
               <span id="span6">
               <input type="submit" name="pname" value="0" style=""> 
                  <img class="scale" alt="" src="pallet_img/ppp0.jpg"><br />                              
               </span>
               
               <span id="span6">
               <input type="submit" name="pname" value="0" style=""> 
                  <img class="scale" alt="" src="pallet_img/ppp0.jpg"><br />                                 
               </span>
               
               <span id="span6">
               <input type="submit" name="pname" value="0" style=""> 
                  <img class="scale" alt="" src="pallet_img/ppp0.jpg"><br />                                 
               </span>
               
               <span id="span6">
               <input type="submit" name="pname" value="0" style=""> 
                  <img class="scale" alt="" src="pallet_img/ppp0.jpg"><br />                              
               </span>
					
					
					<!-- <span id="span6">
						<img class="scale" alt="" src="pallet_img/ppp1_2.png"><br />
					</span>
					<span id="span6">
						<img class="scale" alt="" src="pallet_img/ppp1_2.png"><br />	
					</span>
					
					<span id="span6">
						<img class="scale" alt="" src="pallet_img/ppp1_2.png"><br />										
					</span>
					<span id="span6">
						<img class="scale" alt="" src="pallet_img/ppp1_2.png"><br />			
					</span>
					<span id="span6">
						<img class="scale" alt="" src="pallet_img/ppp1_2.png"><br />									
					</span>
					<span id="span6">
						<img class="scale" alt="" src="pallet_img/ppp1_2.png"><br />										
					</span>
					<span id="span6">
						<img class="scale" alt="" src="pallet_img/ppp1_2.png"><br />									
					</span>
					<span id="span6">
						<img class="scale" alt="" src="pallet_img/ppp1_2.png"><br />	
					</span>
					<span id="span6">
						<img class="scale" alt="" src="pallet_img/ppp1_2.png"><br />
					</span>
					<span id="span6">
						<img class="scale" alt="" src="pallet_img/ppp1_2.png"><br />	
					</span> -->
				</span>

			<br>
			<span id="span3"> <br><br>COLLECTION - CLASSICS | COLOR FAMILY -
				NUDES/NEUTRALS | FINISH TYPE - CREME </span>
		</div>
	</div>
	
</body>
</html>