package com.myfianl.kgv.Join.DAOVO;

public class TicketVO {
	private int t_ticket;
	private int sch_no;
	private int sr_no;
	private String seat_no;
	private int t_pay;
	
	private MovieVO mvv;
	private ScheduleroomVO srv;
	private ScheduleVO scrv;
	private SeatVO sv;
	

	
	public MovieVO getMvv() {
		return mvv;
	}

	public void setMvv(MovieVO mvv) {
		this.mvv = mvv;
	}

	public ScheduleroomVO getSrv() {
		return srv;
	}

	public void setSrv(ScheduleroomVO srv) {
		this.srv = srv;
	}

	public ScheduleVO getScrv() {
		return scrv;
	}

	public void setScrv(ScheduleVO scrv) {
		this.scrv = scrv;
	}

	public SeatVO getSv() {
		return sv;
	}

	public void setSv(SeatVO sv) {
		this.sv = sv;
	}

	
	
	
	public TicketVO() {
		super();
	}
	
	public TicketVO(int t_ticket, int sch_no, int sr_no, String seat_no, int t_pay) {
		super();
		this.t_ticket = t_ticket;
		this.sch_no = sch_no;
		this.sr_no = sr_no;
		this.seat_no = seat_no;
		this.t_pay = t_pay;
	}




	public int getT_ticket() {
		return t_ticket;
	}
	public void setT_ticket(int t_ticket) {
		this.t_ticket = t_ticket;
	}
	public int getSch_no() {
		return sch_no;
	}
	public void setSch_no(int sch_no) {
		this.sch_no = sch_no;
	}
	public int getSr_no() {
		return sr_no;
	}
	public void setSr_no(int sr_no) {
		this.sr_no = sr_no;
	}
	public String getSeat_no() {
		return seat_no;
	}
	public void setSeat_no(String seat_no) {
		this.seat_no = seat_no;
	}
	public int getT_pay() {
		return t_pay;
	}
	public void setT_pay(int t_pay) {
		this.t_pay = t_pay;
	}
	
	
}
