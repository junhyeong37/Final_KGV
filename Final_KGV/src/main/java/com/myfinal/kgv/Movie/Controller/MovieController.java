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
import com.myfinal.kgv.Movie.DAOVO.PlayVO;
import com.myfinal.kgv.Movie.DAOVO.reviewVO;
import com.myfinal.kgv.Movie.Service.MovieService;



@Controller
public class MovieController {
	
	@Autowired
	MovieService ms;
	//FileUploadService fileUploadService;
	
	
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
		System.out.println("테스트");
		
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
	
	/*@RequestMapping(value="MovieAllData.do", method=RequestMethod.GET) 
	public ModelAndView UserAllData(HttpServletRequest req) {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("MovieAllData");
		mv.setViewName("login11");
		
		List<MovieVO> movielist = ms.MovieAllData();
		
		mv.addObject("movielist", movielist);
		
		return mv;
	}
	
	
	@RequestMapping(value="MovieInsertData.do", method=RequestMethod.GET)
	   public ModelAndView MovieInsertData(MovieVO vo, HttpServlet req, Locale locale)throws ParseException{
	      ModelAndView mv=new ModelAndView();
	      mv.setViewName("sdu_admin_movie_insert_check");
	      
	      ms.MovieInsertData(vo);
	      List<MovieVO>movielist=ms.MovieAllData();
	      
	      mv.addObject("movielist", movielist);

	      return mv;
	   }

*/
	
	@RequestMapping(value="MovieAllData.do", method=RequestMethod.GET) 
	   public ModelAndView MovieAllData(HttpServletRequest req) {
	      ModelAndView mv = new ModelAndView();
	      
	      List<MovieVO> movielist = ms.MovieAllData();
	      
	      /*if(movielist != null) {
	         System.out.println("list : " + movielist);
	      }else {
	         System.out.println("정보가 없어요....");
	      }
	   */
	      mv.addObject("movielist", movielist); //데이터
	      mv.setViewName("sdu_movie_search2"); //jsp 페이지 이름
	      
	      
	      return mv;
	   }
	
	@RequestMapping(value="MovieAllData2.do", method=RequestMethod.GET) 
	   public ModelAndView MovieAllData2(HttpServletRequest req) {
	      ModelAndView mv = new ModelAndView();
	      
	      List<MovieVO> movielist = ms.MovieAllData2();
	      
	      /*if(movielist != null) {
	         System.out.println("list : " + movielist);
	      }else {
	         System.out.println("정보가 없어요....");
	      }
	   */
	      mv.addObject("movielist", movielist); //데이터
	      mv.setViewName("sdu_reserv_test"); //jsp 페이지 이름
	      
	      
	      return mv;
	   }
	
	   
	 /*  @RequestMapping(value="MovieAllData2.do", method=RequestMethod.GET) 
	   public ModelAndView UserAllData1(HttpServletRequest req) {
	      ModelAndView mv = new ModelAndView();
	      
	      List<MovieVO> movielist = ms.MovieAllData();
	      
	      if(movielist != null) {
	         System.out.println("list : " + movielist);
	      }else {
	         System.out.println("정보가 없어요....");
	      }
	   
	      mv.addObject("movielist", movielist); //데이터
	      mv.setViewName("sdu_index_navbar"); //jsp 페이지 이름
	      
	      return mv;
	   }*/
	   
	   @RequestMapping(value="MovieInsertData.do", method=RequestMethod.GET) 
	   public ModelAndView MovieInsertData(MovieVO vo,HttpServletRequest req, Locale locale) throws ParseException {
	      ModelAndView mv = new ModelAndView();
	      mv.setViewName("sdu_admin_movie_insert_check");
	         
	      
	      ms.MovieInsertData(vo);
	      List<MovieVO> movielist = ms.MovieAllData();
	      
	      mv.addObject("movielist", movielist);
	      
	      return mv;
	   }
	   
	  /* @RequestMapping(value="MovieSearchData.do", method=RequestMethod.GET) 
	   public ModelAndView MovieSearchData(MovieVO vo,HttpServletRequest req, Locale locale) throws ParseException {
	      ModelAndView mv = new ModelAndView();
	      
	      String photo = req.getParameter("movie_photo"); //jsp에서 데이터 받을 때 이렇게 받으면 돼
	      System.out.println("photo : " + photo);
	      
	      
	      List<MovieVO> mlist = ms.MovieSearchData(vo);
	      
	      mv.addObject("mlist", mlist); //데이터
	      mv.setViewName("sdu_movie_info"); //jsp 페이지 이름
	      return mv;
	   }*/
	   
	   @RequestMapping(value="MovieSearchData2.do", method=RequestMethod.GET) 
	   public ModelAndView MovieSearchData2(MovieVO vo,HttpServletRequest req, Locale locale) throws ParseException {
	      ModelAndView mv = new ModelAndView();
	      
	      mv.setViewName("sdu_admin_movie_search2_check");
	      
	      String photo = req.getParameter("movie_no"); //jsp에서 데이터 받을 때 이렇게 받으면 돼
	      System.out.println("no : " + photo);
	      
	      
	      List<MovieVO> mlist = ms.MovieSearchData2(vo);

	      mv.addObject("mlist", mlist); //데이터
	      mv.setViewName("sdu_index_navbar"); //jsp 페이지 이름
	      return mv;
	   }
	
	   @RequestMapping(value="Goseat.do", method=RequestMethod.GET) 
		@ResponseBody
		public ModelAndView Goseat(String A, String B, String C, String D, String E, int movie_no) throws ParseException {
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
			mv.addObject("movie_no",movie_no);
			

			return mv;
		}
	
	   @RequestMapping(value="Goseat2.do", method=RequestMethod.GET, produces="text/plain;charset=UTF-8") 
		@ResponseBody
		public ModelAndView Goseat2(String movie_name, int movie_no, String play_theater, String play_day,String play_time, String play_inwon, String play_seat, int play_price) throws ParseException {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("paytest");

			mv.addObject("movie_name", movie_name);
			mv.addObject("movie_no",movie_no);
			mv.addObject("play_theater",play_theater);
			mv.addObject("play_day",play_day);
			mv.addObject("play_time",play_time);
			mv.addObject("play_inwon",play_inwon);
			mv.addObject("play_seat",play_seat);
			mv.addObject("play_price",play_price);
			
			
			return mv;
		}
		
		
		@RequestMapping(value="play.do", method=RequestMethod.GET, produces="text/plain;charset=UTF-8") 
		@ResponseBody
		public ModelAndView play(PlayVO vo,HttpServletRequest req) throws ParseException {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("playcomplete");
			
			ms.play(vo);

			return mv;
		}
	
	
		
		@RequestMapping(value="MovieSearchData.do", method=RequestMethod.GET) 
		   public ModelAndView MovieSearchData(MovieVO vo,HttpServletRequest req, Locale locale) throws ParseException {
		      ModelAndView mv = new ModelAndView();
		      
		      List<MovieVO> mlist = ms.MovieSearchData(vo);
		      
		      
		      reviewVO vo2 = new reviewVO();
		      List<reviewVO> reviewlist = ms.ReviewView(vo2);
		      mv.addObject("reviewlist", reviewlist);
		      
		      //////////////
		      
		      String Referer = req.getHeader("referer");
		      
		      System.out.println(Referer);
		      
		      mv.addObject("mlist", mlist); 
		      mv.setViewName("sdu_movie_info"); 
		      return mv;
		   }
		
		
		
		 @RequestMapping(value="ReviewInsert.do", method=RequestMethod.GET) 
		   public String ReviewInsert(reviewVO vo, HttpServletRequest req, Locale locale) throws ParseException {
		      /*mv.setViewName("sdu_movie_info");*/
		      ms.ReviewInsert(vo);
		      String refe = req.getHeader("referer");
		      String refe2 = refe.split(".do?")[1];
		      
		      System.out.println(refe2);
		      
		      List<reviewVO> reviewlist = ms.ReviewView(vo);
		      System.out.println("cont:"+reviewlist);		      
		      return "redirect:MovieSearchData.do"+refe2;  
		   }
		
		
		
		
		
		
		
		
		
		
		
		
}
