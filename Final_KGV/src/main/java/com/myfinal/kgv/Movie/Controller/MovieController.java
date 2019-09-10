package com.myfinal.kgv.Movie.Controller;



import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
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
	
	
	
	
	
	
	@RequestMapping(value="MovieAllData.do", method=RequestMethod.GET) 
	   public ModelAndView MovieAllData(HttpServletRequest req) {
	      ModelAndView mv = new ModelAndView();
	      
	      List<MovieVO> movielist = ms.MovieAllData();
	      
	      /*if(movielist != null) {
	         System.out.println("list : " + movielist);
	      }else {
	         System.out.println("������ �����....");
	      }
	   */
	      mv.addObject("movielist", movielist); //������
	      mv.setViewName("sdu_movie_search2"); //jsp ������ �̸�
	      
	      
	      return mv;
	   }
	
	@RequestMapping(value="MovieAllData2.do", method=RequestMethod.GET) 
	   public ModelAndView MovieAllData2(HttpServletRequest req) {
	      ModelAndView mv = new ModelAndView();
	      
	      List<MovieVO> movielist = ms.MovieAllData2();
	      
	      /*if(movielist != null) {
	         System.out.println("list : " + movielist);
	      }else {
	         System.out.println("������ �����....");
	      }
	   */
	      mv.addObject("movielist", movielist); //������
	      mv.setViewName("sdu_reserv_test"); //jsp ������ �̸�
	      
	      
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
	   
	   @RequestMapping(value="MovieSearchData.do", method=RequestMethod.GET) 
	   public ModelAndView MovieSearchData(MovieVO vo,HttpServletRequest req, Locale locale) throws ParseException {
	      ModelAndView mv = new ModelAndView();
	      
	      List<MovieVO> mlist = ms.MovieSearchData(vo);
	      
	      /////////////추가로 댓글
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
	   
	   @RequestMapping(value="MovieSearchData2.do", method=RequestMethod.GET) 
	   public ModelAndView MovieSearchData2(MovieVO vo,HttpServletRequest req, Locale locale) throws ParseException {
	      ModelAndView mv = new ModelAndView();
	      
	      mv.setViewName("sdu_admin_movie_search2_check");
	      
	      String photo = req.getParameter("movie_no"); //jsp���� ������ ���� �� �̷��� ������ ��
	      System.out.println("no : " + photo);
	      
	      
	      List<MovieVO> mlist = ms.MovieSearchData2(vo);

	      mv.addObject("mlist", mlist); //������
	      mv.setViewName("sdu_index_navbar"); //jsp ������ �̸�
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
	
		
		
//		   @RequestMapping(value="ReviewInsert.do", method=RequestMethod.GET) 
//		   public ModelAndView ReviewInsert(reviewVO vo, HttpServletRequest req, Locale locale) throws ParseException {
//		      ModelAndView mv = new ModelAndView() ;
//		      /*mv.setViewName("sdu_movie_info");*/
//		      ms.ReviewInsert(vo);
//		      String Referer = req.getHeader("referer");
//		      
//		      
//		      
//		      System.out.println(Referer);
//		      
//		      List<reviewVO> reviewlist = ms.ReviewView(vo);
//		      System.out.println("리뷰리스트:"+reviewlist);		      
//		      return mv;
//		   }
		   
		 @RequestMapping(value="ReviewInsert.do", method=RequestMethod.GET) 
		   public String ReviewInsert(reviewVO vo, HttpServletRequest req, Locale locale) throws ParseException {
		      /*mv.setViewName("sdu_movie_info");*/
		      ms.ReviewInsert(vo);
		      String refe = req.getHeader("referer");
		      String refe2 = refe.split(".do?")[1];
		      
		      System.out.println(refe2);
		      
		      List<reviewVO> reviewlist = ms.ReviewView(vo);
		      System.out.println("리뷰리스트:"+reviewlist);		      
		      return "redirect:MovieSearchData.do"+refe2;  //assets/img/그것%20두번째이야기/1.jpg&movie_no=13;
		   }
}
