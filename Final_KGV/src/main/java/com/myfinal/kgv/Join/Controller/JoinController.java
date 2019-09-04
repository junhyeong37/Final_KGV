package com.myfinal.kgv.Join.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.myfianl.kgv.Join.DAOVO.TicketVO;
import com.myfinal.kgv.Join.Service.JoinService;

@Controller
public class JoinController {
	

	@Autowired
	JoinService js;
	
	/*@RequestMapping(value = "/", method = RequestMethod.GET) 
	public ModelAndView Main(HttpServletRequest req) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("sdu_index_navbar");
		return mv;
	}*/
	
	
	/*sdu_reserv2에서의 값들을 sdu_seat로 전송*/
	@RequestMapping(value = "reserv.do", method = RequestMethod.POST)
	public ModelAndView reserv(HttpServletRequest req) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("sdu_seat");		

		List<TicketVO> reservlist = js.reserv();
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
