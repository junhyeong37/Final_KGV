package com.myfinal.kgv.Join.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.myfianl.kgv.Join.DAOVO.MovieVO;
import com.myfianl.kgv.Join.DAOVO.ScheduleVO;
import com.myfianl.kgv.Join.DAOVO.ScheduleroomVO;
import com.myfianl.kgv.Join.DAOVO.TicketVO;
import com.myfinal.kgv.Join.Service.JoinService;

@Controller
public class JoinController {
	

	@Autowired
	JoinService js;
	
	/*sdu_reserv2������ ������ sdu_seat�� ����*/
	@RequestMapping(value = "reserv.do", method = RequestMethod.POST)
	public ModelAndView reserv(HttpServletRequest req, MovieVO mvv, ScheduleroomVO srv, ScheduleVO scrv, TicketVO tv ) {
		ModelAndView mv = new ModelAndView();

		List<TicketVO> reservlist = js.reserv(mvv, srv, scrv, tv);
		mv.addObject("reservlist",reservlist);
		return mv;
	}

	/*		String movie_name = mvv.getMovie_name();
	String sr_jijum = srv.getSr_jijum();
	String sch_naljja = scrv.getSch_naljja();
	String sch_schedule = scrv.getSch_schedule();
	int t_ticket = tv.getT_ticket();
	int t_pay = tv.getT_pay();
	
	mv.setViewName("sdu_seat");
	mv.addObject("movie_name", movie_name);
	mv.addObject("sr_jijum",sr_jijum);
	mv.addObject("sch_naljja",sch_naljja);
	mv.addObject("sch_schedule",sch_schedule);
	mv.addObject("t_ticket",t_ticket);
	mv.addObject("t_pay",t_pay);
	
	System.out.println(mv);*/
	
	
	
	
}
