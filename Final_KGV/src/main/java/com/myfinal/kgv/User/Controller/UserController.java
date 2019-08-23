package com.myfinal.kgv.User.Controller;



import java.util.ArrayList;
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
		System.out.println("테스트");
		
		
		return mv;
	}
	
	////// 디비 연결되나 USER 리스트 확인용
	@RequestMapping(value = "test.do", method = RequestMethod.GET) 
	public ModelAndView logintest(HttpServletRequest req) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		System.out.println("테스트");
		List<UserVO> list = us.UserAllData();
		
		for(int i=0; i<list.size(); i++){
			System.out.println(list.get(i).getUser_id());
		}
		
		return mv;
	}
	
	////// 유저 로그인 확인 
	@RequestMapping(value="LoginView.do", method=RequestMethod.GET) 
	@ResponseBody
	public ModelAndView LoginView(HttpServletRequest req , UserVO vo) {
		ModelAndView mv = new ModelAndView();
		vo = new UserVO();
		int data =0;
		
		mv.setViewName("login");
		
		data = us.LoginView(vo);
		
		System.out.println(data +" : 컨트롤러");
		
		mv.addObject("data", data);
		
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
