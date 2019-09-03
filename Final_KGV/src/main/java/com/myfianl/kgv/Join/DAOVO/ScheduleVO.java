package com.myfianl.kgv.Join.DAOVO;

public class ScheduleVO {

	private int sch_no;
	private int movie_no;
	private int sr_no;
	private String sch_schedule;
	private String sch_naljja;

	
	public ScheduleVO() {
		super();
	}
	public ScheduleVO(int sch_no, int movie_no, int sr_no, String sch_schedule, String sch_naljja) {
		super();
		this.sch_no = sch_no;
		this.movie_no = movie_no;
		this.sr_no = sr_no;
		this.sch_schedule = sch_schedule;
		this.sch_naljja = sch_naljja;
	}
	
	
	public int getSch_no() {
		return sch_no;
	}
	public void setSch_no(int sch_no) {
		this.sch_no = sch_no;
	}
	public int getMovie_no() {
		return movie_no;
	}
	public void setMovie_no(int movie_no) {
		this.movie_no = movie_no;
	}
	public int getSr_no() {
		return sr_no;
	}
	public void setSr_no(int sr_no) {
		this.sr_no = sr_no;
	}
	public String getSch_schedule() {
		return sch_schedule;
	}
	public void setSch_schedule(String sch_schedule) {
		this.sch_schedule = sch_schedule;
	}
	public String getSch_naljja() {
		return sch_naljja;
	}
	public void setSch_naljja(String sch_naljja) {
		this.sch_naljja = sch_naljja;
	}

	
	
	
}
