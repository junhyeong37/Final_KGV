package com.myfinal.kgv.User.Controller;



import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.myfinal.kgv.User.DAOVO.UserVO;
import com.myfinal.kgv.User.Service.UserService;



@Controller
public class UserController {
	
	@Autowired
	UserService us;
	
	
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}
	
	
	/*@RequestMapping(value = "/", method = RequestMethod.GET) 
	public ModelAndView Main(HttpServletRequest req) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cjw_index");
		return mv;
	}*/
	
	
	
	
	
	
	@RequestMapping(value = "Login.do", method = RequestMethod.GET) 
	public ModelAndView login(HttpServletRequest req, UserVO vo) {
		ModelAndView mv = new ModelAndView();
		
		String user_id= vo.getUser_id();
				
		mv.setViewName("login11");
		mv.addObject("user_id",user_id);
		System.out.println("test_login");
		
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
	
	
	

	
	@RequestMapping(value="UserAllData.do", method=RequestMethod.GET) 
	public ModelAndView UserAllData(HttpServletRequest req) {
		ModelAndView mv = new ModelAndView();
		
		/*mv.setViewName("UserAllData");*/
		mv.setViewName("login11");
		
		List<UserVO> userlist = us.UserAllData();
		
		mv.addObject("userlist", userlist);
		
		return mv;
	}
	
	
	@RequestMapping(value="UserInsertData.do", method=RequestMethod.GET) 
	public ModelAndView UserInsertData(UserVO vo,HttpServletRequest req, Locale locale) throws ParseException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("JoinPro");
			
		
		us.UserInsertData(vo);
		List<UserVO> userlist = us.UserAllData();
		mv.addObject("userlist", userlist);

		return mv;
	}
	
	
	@RequestMapping(value="UserLogin.do", method=RequestMethod.GET) 
	public ModelAndView UserLogin(UserVO vo,HttpServletRequest req, Locale locale, HttpSession session) throws ParseException {
		ModelAndView mv = new ModelAndView();
//		mv.setViewName("test");
		mv.setViewName("index_TEST_Sl2");
			
		us.UserLogin(vo);
		
		List<UserVO> ulist = us.UserLogin(vo);
		
		System.out.println("login_do : " + ulist);
		
		for (UserVO userVO : ulist) {
			System.out.println(userVO.getUser_address());
		}
		session.setAttribute("ulist", ulist);
		mv.addObject("ulist", ulist);
		return mv;
	}
	
	
	/////////////////////////// �꽭�뀡媛� 濡쒓렇�씤 �뀒�뒪�듃
	@RequestMapping(value="Logo.do", method=RequestMethod.GET) 
	public ModelAndView Logo(UserVO vo,HttpServletRequest req, Locale locale, HttpSession session) throws ParseException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index_TEST_Sl2");
			
		
		return mv;
	}
	
	@RequestMapping(value="Logout.do", method=RequestMethod.GET) 
	public ModelAndView Logout(UserVO vo,HttpServletRequest req, Locale locale, HttpSession session) throws ParseException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index_TEST_Sl2");
		session.invalidate();	
		return mv;
	}
	
}
