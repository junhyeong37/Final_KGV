package com.myfinal.kgv.User.Controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myfinal.kgv.User.DAOVO.FindIdVO;
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

	/*
	 * @RequestMapping(value = "/", method = RequestMethod.GET) public ModelAndView
	 * Main(HttpServletRequest req) { ModelAndView mv = new ModelAndView();
	 * mv.setViewName("cjw_index"); return mv; }
	 */

	@RequestMapping(value = "Login.do", method = RequestMethod.GET)
	public ModelAndView login(HttpServletRequest req, UserVO vo) {
		ModelAndView mv = new ModelAndView();

		String user_id = vo.getUser_id();

		mv.setViewName("login11");
		mv.addObject("user_id", user_id);
		System.out.println("test_login");

		return mv;
	}

	@RequestMapping(value = "Loginaction.do", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView Loginaction(HttpServletRequest req, UserVO vo) {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("login11");

		int data = us.Loginaction(vo);
		System.out.println(data);
		mv.addObject("data", data);

		return mv;
	}

	@RequestMapping(value = "UserAllData.do", method = RequestMethod.GET)
	public ModelAndView UserAllData(HttpServletRequest req) {
		ModelAndView mv = new ModelAndView();

		/* mv.setViewName("UserAllData"); */
		mv.setViewName("login11");

		List<UserVO> userlist = us.UserAllData();

		mv.addObject("userlist", userlist);

		return mv;
	}

	@RequestMapping(value = "UserInsertData.do", method = RequestMethod.GET)
	public ModelAndView UserInsertData(UserVO vo, HttpServletRequest req, Locale locale) throws ParseException {
		ModelAndView mv = new ModelAndView();
		//mv.setViewName("sdu_membership_ok");
		mv.setViewName("JoinPro");

		
		
		us.UserInsertData(vo);
		List<UserVO> userlist = us.UserAllData();
		mv.addObject("userlist", userlist);
		
		

		return mv;
	}

	/*@RequestMapping(value = "UserLogin.do", method = RequestMethod.GET)
	public ModelAndView UserLogin(UserVO vo, HttpServletRequest req, Locale locale, HttpSession session)
			throws ParseException {
		ModelAndView mv = new ModelAndView();
//		mv.setViewName("test");
		mv.setViewName("sdu_index_navbar");

		us.UserLogin(vo);

		List<UserVO> ulist = us.UserLogin(vo);

		System.out.println("login_do : " + ulist);

		for (UserVO userVO : ulist) {
			System.out.println(userVO.getUser_address());
		}
		session.setAttribute("ulist", ulist);
		mv.addObject("ulist", ulist);
		return mv;
	}*/
	
	@RequestMapping(value = "UserLogin.do", method = RequestMethod.GET)
	public ModelAndView UserLogin(UserVO vo, HttpServletRequest req, Locale locale, HttpSession session, RedirectAttributes rttr)
			throws ParseException {
		ModelAndView mv = new ModelAndView();
//		mv.setViewName("test");
		//mv.setViewName("sdu_index_navbar");

		us.UserLogin(vo);

		List<UserVO> ulist = us.UserLogin(vo);

		System.out.println("login_do : " + ulist);

		for (UserVO userVO : ulist) {
			System.out.println(userVO.getUser_address());
		}
		
		if(ulist.isEmpty()) {
			mv.setViewName("sdu_login");/*
			rttr.addFlashAttribute("msg", false);*/
			mv.addObject("msg","false");
			
			
		}else {
			mv.setViewName("sdu_index_navbar");
			session.setAttribute("ulist", ulist);
			mv.addObject("ulist",ulist);
			
		}
		return mv;
		/*session.setAttribute("ulist", ulist);
		mv.addObject("ulist", ulist);
		return mv;*/
	}

	/////////////////////////// �꽭�뀡媛� 濡쒓렇�씤 �뀒�뒪�듃
	@RequestMapping(value = "Logo.do", method = RequestMethod.GET)
	public ModelAndView Logo(UserVO vo, HttpServletRequest req, Locale locale, HttpSession session)
			throws ParseException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("sdu_index_navbar");

		return mv;
	}

	@RequestMapping(value = "Logout.do", method = RequestMethod.GET)
	public ModelAndView Logout(UserVO vo, HttpServletRequest req, Locale locale, HttpSession session)
			throws ParseException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("sdu_index_navbar");
		session.invalidate();
		return mv;
	}

	/*@ResponseBody
	@RequestMapping(value = "findingId.do", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
	public ModelAndView findingId(UserVO vo, HttpServletResponse response, HttpSession session, Locale locale)
			throws Exception {
		ModelAndView mv = new ModelAndView();

		us.findId(vo);
		List<UserVO> ulist = us.findId(vo);
		System.out.println(ulist.size());

		if (ulist.size() == 0) {
			mv.setViewName("sdu_idsearch");
		} else if (ulist.size() == 1) {
			mv.setViewName("findId");
		}

		mv.addObject("ulist", ulist);
		return mv;
	}*/

	// id 중복 체크 컨트롤러
	@RequestMapping("duplicationCheck.do")
	@ResponseBody
	public String CheckDuplication(@RequestBody String inputId) {
		
		String checkRst;
		int idCnt = us.CheckDuplication(inputId);
		if(idCnt > 0) 
			checkRst = "F";
		else 
			checkRst = "S";
		
		return checkRst;
	}
	
	//id 찾기 
		@RequestMapping("findId.do")
		@ResponseBody
		public String findId(String inputName, String inputTel,HttpSession session) {
			System.out.println("컨트롤러" + inputName);
			System.out.println("컨트롤러" + inputTel);
			
			int idCnt = us.IdCheck(inputName,inputTel);
			String checkRst;
			if(idCnt > 0) 
				checkRst = "F";
			else 
				checkRst = "S";
			
			
			return checkRst;
		}
	
		
		
		//id를 찾고 id를 뽑아주는 거
	
		@RequestMapping(value="SelectId.do", method=RequestMethod.GET)
		public ModelAndView SelectId(UserVO vo, HttpServletRequest req, Locale locale) throws ParseException, IndexOutOfBoundsException{
			ModelAndView mv=new ModelAndView();
			
			//mv.setViewName("sdu_testtest11");
			
			String user_name=req.getParameter("user_name");
			String user_tel=req.getParameter("user_tel");
			
			System.out.println(user_name+"그리고"+ user_tel);
			
			List<UserVO> ulist=us.SelectId(vo);
//			UserVO id = ulist.get(0);
			//System.out.println(id.getUser_id());
			mv.addObject("ulist", ulist);
			mv.setViewName("sdu_idsearch_ok");
			
			return mv;
			
		}
		
		
		

}
