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
	?��?��링의 별명?�� spring-servlet?���?�? session?�� ?��블릿 ?��???���? 객체?��?��?��?��
					throws ClassNotFoundException, SQLException {
		UserVO user=userDAO.getUser(vo);
		if(user != null) {
			session.setAttribute("users", user);
			return "getBoardList.do"; //?��록된 user?��?�� ?��?�� 게시?��?���? 보내?���?
		}
		else
			return "login.html"; //?��록된 ?��??�? ?��?��?���? �??��?��?���? 보내?���?
	}

	@RequestMapping("/insertUser.do")
	public String kajaInsertUser(UserVO vo, UserDAO userDAO) 
			throws ClassNotFoundException, SQLException {
		userDAO.insertUser(vo); //?��?���??��?���?
		return "login.html";    //member�? ?�� �? ?��?��?�� ?��?��?��?���? 로그?��
	}

	@RequestMapping("/logout.do")
	public String kajaLogout(HttpSession session) {
		session.invalidate();
		return "index.html";
	}   //?��?�� ?��체�?? 모두 ?��?��?��
	
	
	
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
		return "login.html";// ?��?��명을 ?��줘야?��?��.maven�? 차이?��
	}

	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String kajaSignUp(UserVO vo, UserDAO userDAO, HttpSession session)
			throws ClassNotFoundException, SQLException {
		UserVO user = userDAO.getUser(vo);
		// ?��?��링의 별명?�� spring-servlet?���?�? session?�� ?��블릿?��???���? 객체?��?��?��?��?��
		if (user != null) {
			session.setAttribute("user", user);
			return "getBoardList.do";// ?��록된 ?��???���? ?��?��게시?��?���?
		} else {
			return "login.html";// ?��?���? ?��?���??��?���?
		}
	}

	@RequestMapping(value = "/insertUser.do", method = RequestMethod.POST)
	public String realKajaLogin(UserVO vo, UserDAO userDAO, HttpSession session)
			throws ClassNotFoundException, SQLException {

		userDAO.insertUser(vo);//?��?���??��?���?
		return "login.html";//멤버�? ?�� �? ?��?��?�� ?��?��?��?���? 로그?��
	}
	@RequestMapping(value="/logout.do")
	public String kajaLogout(HttpSession session) {
		session.invalidate();
		return "index.html";
	}
}
*/