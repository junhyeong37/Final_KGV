package com.myfinal.kgv.User.Controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.myfinal.kgv.User.DAOVO.UserVO;
import com.myfinal.kgv.User.Service.UserService;



@Controller
public class UserController {
	
	@Autowired
	UserService us;
	
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET) 
	public ModelAndView Main(HttpServletRequest req) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cjw_index");
		System.out.println("dd");
		return mv;
	}
	
	@RequestMapping(value = "Login.do", method = RequestMethod.GET) 
	public ModelAndView login(HttpServletRequest req) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		System.out.println("Å×½ºÆ®");
		
		
		return mv;
	}
	
	
	
	@RequestMapping(value="Loginaction.do", method=RequestMethod.POST) 
	@ResponseBody
	public ModelAndView Loginaction(HttpServletRequest req , UserVO uv) {
		ModelAndView mv = new ModelAndView();
		int data = 0;
		
		mv.setViewName("Login");
		
		data = us.Loginaction(uv);
		
		System.out.println(data);
		
		mv.addObject("data", data);
		
		return mv;
	}
	
	
	@RequestMapping(value="UserAllData.do", method=RequestMethod.GET) 
	public ModelAndView UserAllData(HttpServletRequest req) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("UserAllData");
		
		List<UserVO> userlist = us.UserAllData();
		
		mv.addObject("userlist", userlist);
		
		return mv;
	}
	
	@RequestMapping(value="UserInsertData.do", method=RequestMethod.GET) 
	public ModelAndView UserInsertData(UserVO vo,HttpServletRequest req) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("UserAllData");

		us.UserInsertData(vo);
		
		List<UserVO> userlist = us.UserAllData();
		
		mv.addObject("userlist", userlist);
		
		return mv;
	}
	
}
