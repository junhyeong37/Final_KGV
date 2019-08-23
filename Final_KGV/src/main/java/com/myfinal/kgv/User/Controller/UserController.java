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
		return mv;
	}
	
	
	
	
	
	
	@RequestMapping(value = "Login.do", method = RequestMethod.GET) 
	public ModelAndView login(HttpServletRequest req, UserVO vo) {
		ModelAndView mv = new ModelAndView();
		
		String user_id= vo.getUser_id();
				
		mv.setViewName("login11");
		mv.addObject("user_id",user_id);
		System.out.println("Å×½ºÆ®");
		
		return mv;
	}
	
	
	
	
	
/*	@RequestMapping(value="Loginaction.do", method=RequestMethod.POST) 
	@ResponseBody
	public ModelAndView Loginaction(HttpServletRequest req , UserVO vo) {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("login11");
		
		int data = us.Loginaction(vo);		
		System.out.println(data);
		mv.addObject("data", data);
		
		return mv;
	}*/
	
	
	
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
	
	
	@RequestMapping(value="UserInsertData.do", method=RequestMethod.POST) 
	public ModelAndView UserInsertData(UserVO vo,HttpServletRequest req) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("JoinPro");
		
		/*String user_name= vo.getUser_id();*/
		
		us.UserInsertData(vo);
		
		List<UserVO> userlist = us.UserAllData();
		
		/*mv.addObject("user_name",user_name);*/
		mv.addObject("userlist", userlist);

		return mv;
	}
	
}
