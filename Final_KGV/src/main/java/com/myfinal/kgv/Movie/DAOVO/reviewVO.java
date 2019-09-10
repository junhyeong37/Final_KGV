package com.myfinal.kgv.Movie.DAOVO;



public class reviewVO {

	private int re_no;
	private String re_content;
	private int movie_no;
	private int user_no;
	
	
	
	
	
	
	
	
	public reviewVO() {
		super();
	}

	public reviewVO(int re_no, String re_content, int movie_no, int user_no) {
		super();
		this.re_no = re_no;
		this.re_content = re_content;
		this.movie_no = movie_no;
		this.user_no = user_no;
	}
	
	public int getRe_no() {
		return re_no;
	}
	public void setRe_no(int re_no) {
		this.re_no = re_no;
	}
	public String getRe_content() {
		return re_content;
	}
	public void setRe_content(String re_content) {
		this.re_content = re_content;
	}
	public int getMovie_no() {
		return movie_no;
	}
	public void setMovie_no(int movie_no) {
		this.movie_no = movie_no;
	}
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	
	
}
