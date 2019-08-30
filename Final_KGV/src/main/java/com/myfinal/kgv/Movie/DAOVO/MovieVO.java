package com.myfinal.kgv.Movie.DAOVO;

import org.springframework.web.multipart.MultipartFile;

public class MovieVO {

	private int movie_no;
	private String movie_name;
	private String movie_level;
	private String movie_photo;
	private String movie_photoname;
	private String movie_preview;
	private int movie_likes;
	private String movie_openday;
	private String movie_genre;
	private String movie_runtime;
	private String movie_content;
	private String movie_actor;
	private String movie_director;
	private MultipartFile file;
	
	public MovieVO(int movie_no, String movie_name, String movie_level, String movie_photo, String movie_photoname,
			String movie_preview, int movie_likes, String movie_openday, String movie_genre, String movie_runtime,
			String movie_content, String movie_actor, String movie_director, MultipartFile file) {
		super();
		this.movie_no = movie_no;
		this.movie_name = movie_name;
		this.movie_level = movie_level;
		this.movie_photo = movie_photo;
		this.movie_photoname = movie_photoname;
		this.movie_preview = movie_preview;
		this.movie_likes = movie_likes;
		this.movie_openday = movie_openday;
		this.movie_genre = movie_genre;
		this.movie_runtime = movie_runtime;
		this.movie_content = movie_content;
		this.movie_actor = movie_actor;
		this.movie_director = movie_director;
		this.file = file;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public MovieVO(int movie_no, String movie_name, String movie_level, String movie_photo, String movie_preview,
			int movie_likes, String movie_openday, String movie_genre, String movie_runtime, String movie_content,
			String movie_actor, String movie_director) {
		super();
		this.movie_no = movie_no;
		this.movie_name = movie_name;
		this.movie_level = movie_level;
		this.movie_photo = movie_photo;
		this.movie_preview = movie_preview;
		this.movie_likes = movie_likes;
		this.movie_openday = movie_openday;
		this.movie_genre = movie_genre;
		this.movie_runtime = movie_runtime;
		this.movie_content = movie_content;
		this.movie_actor = movie_actor;
		this.movie_director = movie_director;
	}

	public MovieVO() {
		super();
	}

	public int getMovie_no() {
		return movie_no;
	}

	public void setMovie_no(int movie_no) {
		this.movie_no = movie_no;
	}

	public String getMovie_name() {
		return movie_name;
	}

	public void setMovie_name(String movie_name) {
		this.movie_name = movie_name;
	}

	public String getMovie_level() {
		return movie_level;
	}

	public void setMovie_level(String movie_level) {
		this.movie_level = movie_level;
	}

	public String getMovie_photo() {
		return movie_photo;
	}

	public void setMovie_photo(String movie_photo) {
		this.movie_photo = movie_photo;
	}

	public String getMovie_photoname() {
		return movie_photoname;
	}

	public void setMovie_photoname(String movie_photoname) {
		this.movie_photoname = movie_photoname;
	}

	public String getMovie_preview() {
		return movie_preview;
	}

	public void setMovie_preview(String movie_preview) {
		this.movie_preview = movie_preview;
	}

	public int getMovie_likes() {
		return movie_likes;
	}

	public void setMovie_likes(int movie_likes) {
		this.movie_likes = movie_likes;
	}

	public String getMovie_openday() {
		return movie_openday;
	}

	public void setMovie_openday(String movie_openday) {
		this.movie_openday = movie_openday;
	}

	public String getMovie_genre() {
		return movie_genre;
	}

	public void setMovie_genre(String movie_genre) {
		this.movie_genre = movie_genre;
	}

	public String getMovie_runtime() {
		return movie_runtime;
	}

	public void setMovie_runtime(String movie_runtime) {
		this.movie_runtime = movie_runtime;
	}

	public String getMovie_content() {
		return movie_content;
	}

	public void setMovie_content(String movie_content) {
		this.movie_content = movie_content;
	}

	public String getMovie_actor() {
		return movie_actor;
	}

	public void setMovie_actor(String movie_actor) {
		this.movie_actor = movie_actor;
	}

	public String getMovie_director() {
		return movie_director;
	}

	public void setMovie_director(String movie_director) {
		this.movie_director = movie_director;
	}
	
	
	
}
