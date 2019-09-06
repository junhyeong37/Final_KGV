<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- <img src="http://localhost:8080/Final_KGV/images/giraffe.jpg" alt="" />
	
	<input type="checkbox" name="" id="" /> -->

	<script>
		//2개만 체크되게 하기

		function count_ck(obj) {

			var chkbox = document.getElementsByName("chk");

			var chkCnt = 0;

			for (var i = 0; i < chkbox.length; i++) {

				if (chkbox[i].checked) {

					chkCnt++;

				}

			}

			if (chkCnt > 2) {

				alert("check NO");

				obj.checked = false;

				return false;

			}

		}
		function go() {
			alert("젠장");
		}
	</script>


	<form name="checkTest">

		<input type="checkbox" id="test" name="chk" onClick="count_ck(this);" value="1" checked><br> 
		<input type="checkbox" id="test"name="chk" onClick="count_ck(this);" value="2"><br> 
		<input type="checkbox" id="test"name="chk" onClick="count_ck(this);" value="3"><br>
		<input type="checkbox" id="test"name="chk" onClick="count_ck(this);" value="4">
		
	</form>
	
	<a href="javascript:go();">띠밤</a>
	
	<input type="button" v/>

	
</body>
</html>