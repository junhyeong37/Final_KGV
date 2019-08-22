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
	?€?λ§μ λ³λͺ?΄ spring-servlet?΄λ―?λ‘? session? ?λΈλ¦Ώ ?€???Όλ‘? κ°μ²΄??±?΄?Ό
					throws ClassNotFoundException, SQLException {
		UserVO user=userDAO.getUser(vo);
		if(user != null) {
			session.setAttribute("users", user);
			return "getBoardList.do"; //?±λ‘λ user?Ό? ??΄ κ²μ??Όλ‘? λ³΄λ΄?κ²?
		}
		else
			return "login.html"; //?±λ‘λ ? ??κ°? ???Όλ©? κ°????Όκ³? λ³΄λ΄?κ²?
	}

	@RequestMapping("/insertUser.do")
	public String kajaInsertUser(UserVO vo, UserDAO userDAO) 
			throws ClassNotFoundException, SQLException {
		userDAO.insertUser(vo); //??κ°???κ³?
		return "login.html";    //memberκ°? ? κ·? ??΄? ?¨?€??λ‘? λ‘κ·Έ?Έ
	}

	@RequestMapping("/logout.do")
	public String kajaLogout(HttpSession session) {
		session.invalidate();
		return "index.html";
	}   //?Ή? ?μ²΄λ?? λͺ¨λ ??€?€
	
	
	
}
*/

package com.kgv.view.user;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kgv.biz.user.dao.UserDAO;
import com.kgv.biz.user.vo.UserVO;

@Controller
public class UserController {
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String ildanKajaLogin() {
		return "login.html";// ??₯λͺμ ?¨μ€μΌ??€.mavenκ³? μ°¨μ΄? 
	}

	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String kajaSignUp(UserVO vo, UserDAO userDAO, HttpSession session)
			throws ClassNotFoundException, SQLException {
		UserVO user = userDAO.getUser(vo);
		// ?€?λ§μ λ³λͺ?΄ spring-servlet?΄λ―?λ‘? session? ?λΈλ¦Ώ?€???Όλ‘? κ°μ²΄??±?΄?Ό?¨
		if (user != null) {
			session.setAttribute("user", user);
			return "getBoardList.do";// ?±λ‘λ ? ???΄λ©? ??΄κ²μ??Όλ‘?
		} else {
			return "login.html";// ??λ©? ??κ°???Όλ‘?
		}
	}

	@RequestMapping(value = "/insertUser.do", method = RequestMethod.POST)
	public String realKajaLogin(UserVO vo, UserDAO userDAO, HttpSession session)
			throws ClassNotFoundException, SQLException {

		userDAO.insertUser(vo);//??κ°???κ³?
		return "login.html";//λ©€λ²κ°? ? κ·? ??΄? ?¨?€??λ‘? λ‘κ·Έ?Έ
	}
	@RequestMapping(value="/logout.do")
	public String kajaLogout(HttpSession session) {
		session.invalidate();
		return "index.html";
	}
}
