/*package com.sangdam.view.user;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sangdam.biz.user.dao.UserDAO;
import com.sangdam.biz.user.vo.UserVO;

@Controller
public class UserController {
	
	@RequestMapping(value="/login.do",method=RequestMethod.GET)
	public String ildanKajaLogin() {
		return "login.html";
	}
	
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String realKajaLogin(UserVO vo, UserDAO userDAO,
			HttpSession session)
	?Š¤?”„ë§ì˜ ë³„ëª…?´ spring-servlet?´ë¯?ë¡? session?„ ?„œë¸”ë¦¿ ?Š¤???¼ë¡? ê°ì²´?ƒ?„±?•´?•¼
					throws ClassNotFoundException, SQLException {
		UserVO user=userDAO.getUser(vo);
		if(user != null) {
			session.setAttribute("users", user);
			return "getBoardList.do"; //?“±ë¡ëœ user?¼?•Œ ?ƒ?‹´ ê²Œì‹œ?Œ?œ¼ë¡? ë³´ë‚´?Š”ê²?
		}
		else
			return "login.html"; //?“±ë¡ëœ ?œ ??ê°? ?•„?‹ˆ?¼ë©? ê°??…?•˜?¼ê³? ë³´ë‚´?Š”ê²?
	}

	@RequestMapping("/insertUser.do")
	public String kajaInsertUser(UserVO vo, UserDAO userDAO) 
			throws ClassNotFoundException, SQLException {
		userDAO.insertUser(vo); //?šŒ?›ê°??…?•˜ê³?
		return "login.html";    //memberê°? ?œ ê·? ?•„?´?”” ?Œ¨?Š¤?›Œ?“œë¡? ë¡œê·¸?¸
	}

	@RequestMapping("/logout.do")
	public String kajaLogout(HttpSession session) {
		session.invalidate();
		return "index.html";
	}   //?„¹?…˜ ?ì²´ë?? ëª¨ë‘ ?—†?•¤?‹¤
	
	
	
}
*/
/*
package com.kgv.view.user;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kgv.biz.user.dao.UserDAO;
import com.kgv.biz.user.vo.UserVO;
*/
/*@Controller
public class UserController {
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String ildanKajaLogin() {
		return "login.html";// ?™•?¥ëª…ì„ ?¨ì¤˜ì•¼?•œ?‹¤.mavenê³? ì°¨ì´? 
	}

	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String kajaSignUp(UserVO vo, UserDAO userDAO, HttpSession session)
			throws ClassNotFoundException, SQLException {
		UserVO user = userDAO.getUser(vo);
		// ?Š¤?”„ë§ì˜ ë³„ëª…?´ spring-servlet?´ë¯?ë¡? session?„ ?„œë¸”ë¦¿?Š¤???¼ë¡? ê°ì²´?ƒ?„±?•´?•¼?•¨
		if (user != null) {
			session.setAttribute("user", user);
			return "getBoardList.do";// ?“±ë¡ëœ ?œ ???´ë©? ?ƒ?‹´ê²Œì‹œ?Œ?œ¼ë¡?
		} else {
			return "login.html";// ?•„?‹ˆë©? ?šŒ?›ê°??…?œ¼ë¡?
		}
	}

	@RequestMapping(value = "/insertUser.do", method = RequestMethod.POST)
	public String realKajaLogin(UserVO vo, UserDAO userDAO, HttpSession session)
			throws ClassNotFoundException, SQLException {

		userDAO.insertUser(vo);//?šŒ?›ê°??…?•˜ê³?
		return "login.html";//ë©¤ë²„ê°? ?œ ê·? ?•„?´?”” ?Œ¨?Š¤?›Œ?“œë¡? ë¡œê·¸?¸
	}
	@RequestMapping(value="/logout.do")
	public String kajaLogout(HttpSession session) {
		session.invalidate();
		return "index.html";
	}
}
*/