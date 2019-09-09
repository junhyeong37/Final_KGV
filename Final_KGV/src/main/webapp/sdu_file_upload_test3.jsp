<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>파일 업로드 예제</h1>


	<form method="post" enctype="multipart/form-data"
		action="upload" name="form" class="col s12">
		<div class="row">
			<div class="input-field col s12">
				<input id="movie_name" name="movie_name" type="text"
					class="validate"> <label for="movie_name">영화 이름</label>
			</div>

		</div>


		<div class="row">
			<div class="input-field col s12">
				<input id="movie_level" name="movie_level" type="text"
					class="validate"> <label for="movie_level">영화 등급</label>
			</div>
		</div>

		<div class="row">
			<div class="input-field col s12">
				<input id="movie_genre" name="movie_genre" type="text"
					class="validate"> <label for="movie_genre">영화 장르</label>
			</div>
		</div>

		<div class="row">
			<div class="input-field col s12">
				<input id="movie_content" name="movie_content" type="text"
					class="validate"> <label for="movie_content">영화 줄거리</label>
			</div>
		</div>

		<div class="row">
			<div class="input-field col s12">
				<input id="movie_director" name="movie_director" type="text"
					class="validate"> <label for="movie_director">영화 감독</label>
			</div>
		</div>

		<div class="row">
			<div class="input-field col s12">
				<input id="movie_actor" name="movie_actor" type="text"
					class="validate"> <label for="movie_actor">영화 배우</label>
			</div>
		</div>

		<div class="row">
			<div class="input-field col s12">
				<input id="movie_runtime" name="movie_runtime" type="text"
					class="validate"> <label for="movie_runtime">상영시간</label>
			</div>
		</div>

		<div class="row">
			<div class="input-field col s12">
				<input placeholder="             예)1990-01-01" name="movie_openday"
					id="movie_openday" type="text" class="validate" maxlength="20">
				<label for="movie_openday">개봉일</label>
			</div>
		</div>

		<div class="row">
			<div class="input-field col s12">
				<input id="movie_preview" name="movie_preview" type="text"
					class="validate"> <label for="movie_preview">영화프리뷰</label>
			</div>
		</div>

		<!-- <div class="row">
									<div class="input-field col s12">
										<input id="movie_photo" name="movie_photo" type="text"
											class="validate"> <label for="movie_photo">영화프리뷰</label>
									</div>
								</div> -->

		<div class="row">
			<div class="input-field col s12">
				<input name="movie_photo" type="file">
			</div>
		</div>
		

		<div class="waves-effect waves-light btn blue-grey darken-4 white-tex">
			<input type="submit" value="등록" />
		</div>

		<!-- <input type="button" value="포스터등록하기" onclick="sdu_admin_movie_file_upload.jsp">
									 <br> <br>
 -->



	</form>

</body>
</html>