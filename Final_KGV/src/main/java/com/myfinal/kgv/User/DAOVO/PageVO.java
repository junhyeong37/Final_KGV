package com.myfinal.kgv.User.DAOVO;

public class PageVO {
	private int movie_no;
	private String movie_photo;
	private String movie_name;
	private String play_theater;
	private String play_day;
	private String play_time;
	private String play_inwon;
	private String play_seat;
	private int play_price;
	
	
	
	
	
	public PageVO() {
		super();
	}
	public PageVO(int movie_no, String movie_photo, String movie_name, String play_theater, String play_day,
			String play_time, String play_inwon, String play_seat, int play_price) {
		super();
		this.movie_no = movie_no;
		this.movie_photo = movie_photo;
		this.movie_name = movie_name;
		this.play_theater = play_theater;
		this.play_day = play_day;
		this.play_time = play_time;
		this.play_inwon = play_inwon;
		this.play_seat = play_seat;
		this.play_price = play_price;
	}
	public int getMovie_no() {
		return movie_no;
	}
	public void setMovie_no(int movie_no) {
		this.movie_no = movie_no;
	}
	public String getMovie_photo() {
		return movie_photo;
	}
	public void setMovie_photo(String movie_photo) {
		this.movie_photo = movie_photo;
	}
	public String getMovie_name() {
		return movie_name;
	}
	public void setMovie_name(String movie_name) {
		this.movie_name = movie_name;
	}
	public String getPlay_theater() {
		return play_theater;
	}
	public void setPlay_theater(String play_theater) {
		this.play_theater = play_theater;
	}
	public String getPlay_day() {
		return play_day;
	}
	public void setPlay_day(String play_day) {
		this.play_day = play_day;
	}
	public String getPlay_time() {
		return play_time;
	}
	public void setPlay_time(String play_time) {
		this.play_time = play_time;
	}
	public String getPlay_inwon() {
		return play_inwon;
	}
	public void setPlay_inwon(String play_inwon) {
		this.play_inwon = play_inwon;
	}
	public String getPlay_seat() {
		return play_seat;
	}
	public void setPlay_seat(String play_seat) {
		this.play_seat = play_seat;
	}
	public int getPlay_price() {
		return play_price;
	}
	public void setPlay_price(int play_price) {
		this.play_price = play_price;
	}
	
	
}
