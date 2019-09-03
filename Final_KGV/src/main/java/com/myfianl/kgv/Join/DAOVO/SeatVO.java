package com.myfianl.kgv.Join.DAOVO;

public class SeatVO {

	private String seat_no;
	private int sr_no;
	private int seat_yumu;
	
	
	

	public SeatVO() {
		super();
	}
	public SeatVO(String seat_no, int sr_no, int seat_yumu) {
		super();
		this.seat_no = seat_no;
		this.sr_no = sr_no;
		this.seat_yumu = seat_yumu;
	}
	
	
	
	public String getSeat_no() {
		return seat_no;
	}
	public void setSeat_no(String seat_no) {
		this.seat_no = seat_no;
	}
	public int getSr_no() {
		return sr_no;
	}
	public void setSr_no(int sr_no) {
		this.sr_no = sr_no;
	}
	public int getSeat_yumu() {
		return seat_yumu;
	}
	public void setSeat_yumu(int seat_yumu) {
		this.seat_yumu = seat_yumu;
	}
	
	
	
}
