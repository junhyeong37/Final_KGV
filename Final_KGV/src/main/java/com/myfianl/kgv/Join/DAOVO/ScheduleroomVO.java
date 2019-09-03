package com.myfianl.kgv.Join.DAOVO;

public class ScheduleroomVO {

	private int sr_no;
	private int sr_seat;
	private String sr_jijum;
	private String sr_number;
	

	
	public ScheduleroomVO() {
		super();
	}
	public ScheduleroomVO(int sr_no, int sr_seat, String sr_jijum, String sr_number) {
		super();
		this.sr_no = sr_no;
		this.sr_seat = sr_seat;
		this.sr_jijum = sr_jijum;
		this.sr_number = sr_number;
	}
	
	
	
	public int getSr_no() {
		return sr_no;
	}
	public void setSr_no(int sr_no) {
		this.sr_no = sr_no;
	}
	public int getSr_seat() {
		return sr_seat;
	}
	public void setSr_seat(int sr_seat) {
		this.sr_seat = sr_seat;
	}
	public String getSr_jijum() {
		return sr_jijum;
	}
	public void setSr_jijum(String sr_jijum) {
		this.sr_jijum = sr_jijum;
	}
	public String getSr_number() {
		return sr_number;
	}
	public void setSr_number(String sr_number) {
		this.sr_number = sr_number;
	}
	
	
}
