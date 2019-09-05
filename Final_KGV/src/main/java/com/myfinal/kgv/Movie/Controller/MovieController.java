package com.myfinal.kgv.Movie.Controller;



import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.myfinal.kgv.Movie.DAOVO.MovieVO;
import com.myfinal.kgv.Movie.Service.MovieService;



@Controller
public class MovieController {
	
	@Autowired
	MovieService ms;
	
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET) 
	public ModelAndView Main(HttpServletRequest req) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("sdu_index_navbar");
		return mv;
	}
	
	
	
	
	/*
	
	@RequestMapping(value = "Login.do", method = RequestMethod.GET) 
	public ModelAndView login(HttpServletRequest req, UserVO vo) {
		ModelAndView mv = new ModelAndView();
		
		String user_id= vo.getUser_id();
				
		mv.setViewName("login11");
		mv.addObject("user_id",user_id);
		System.out.println("�׽�Ʈ");
		
		return mv;
	}
	
	
	
	
	
	
	@RequestMapping(value="Loginaction.do", method=RequestMethod.POST) 
	@ResponseBody
	public ModelAndView Loginaction(HttpServletRequest req , UserVO vo) {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("login11");
		
		int data = us.Loginaction(vo);		
		System.out.println(data);
		mv.addObject("data", data);
		
		return mv;
	}
	
	
	

	
	*/
	
	@RequestMapping(value="MovieAllData.do", method=RequestMethod.GET) 
	public ModelAndView UserAllData(HttpServletRequest req) {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("MovieAllData");
		mv.setViewName("login11");
		
		List<MovieVO> movielist = ms.MovieAllData();
		
		mv.addObject("movielist", movielist);
		
		return mv;
	}
	
	@RequestMapping(value="MovieInsertData.do", method=RequestMethod.GET) 
	public ModelAndView MovieInsertData(MovieVO vo,HttpServletRequest req, Locale locale) throws ParseException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("sdu_admin_movie_insert_check");
			
		
		ms.MovieInsertData(vo);
		List<MovieVO> movielist = ms.MovieAllData();
		
		mv.addObject("movielist", movielist);

		return mv;
	}
	
	@RequestMapping(value="Goseat.do", method=RequestMethod.GET) 
	@ResponseBody
	public ModelAndView Goseat(String A, String B, String C, String D, String E) throws ParseException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("seatTest2");
		
		int Z = Integer.parseInt(E.replaceAll("[^\\d]", "").substring(0,1));
		int Y = Integer.parseInt(E.replaceAll("[^\\d]", "").substring(1));
		
		
		System.out.println(Z);
		
		
		
				
		mv.addObject("A",A);
		mv.addObject("B",B);
		mv.addObject("C",C);
		mv.addObject("D",D);
		mv.addObject("E",E);
		mv.addObject("Z",Z);
		mv.addObject("Y",Y);
		

		return mv;
	}
	
}
