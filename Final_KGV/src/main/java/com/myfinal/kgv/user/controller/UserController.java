/*package com.myfinal.kgv.user.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.myfinal.kgv.user.daovo.UserDAO;
import com.myfinal.kgv.user.daovo.UserVO;

*//**
 * Handles requests for the application home page.
 *//*
@Controller
public class UserController {
	
	@Autowired
	UserDAO dao;
	
	*//**
	 * Simply selects the home view to render by returning its name.
	 *//*
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public void test(HttpServletRequest request, HttpServletResponse resp) {
		
		List<UserVO> list = dao.usermain();
		
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i).getUser_id());
		}

	}

//	@Autowired
//	Dao dao;
//	
//	
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public void check(HttpServletRequest request, HttpServletResponse resp) throws Exception {
//				
//		List<DTO> list = dao.boardlistmain();
//		
//		for(int i=0; i<list.size(); i++){
//			System.out.println(list.get(i).getEname());
//		}
//	}

}
*/