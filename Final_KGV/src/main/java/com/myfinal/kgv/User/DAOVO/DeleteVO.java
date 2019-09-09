package com.myfinal.kgv.User.DAOVO;

public class DeleteVO {
	private String play_day;
	private String play_seat;
	
	
	
	public DeleteVO() {
		super();
	}
	public DeleteVO(String play_day, String play_seat) {
		super();
		this.play_day = play_day;
		this.play_seat = play_seat;
	}
	public String getPlay_day() {
		return play_day;
	}
	public void setPlay_day(String play_day) {
		this.play_day = play_day;
	}
	public String getPlay_seat() {
		return play_seat;
	}
	public void setPlay_seat(String play_seat) {
		this.play_seat = play_seat;
	}
}
