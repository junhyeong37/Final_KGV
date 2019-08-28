package com.myfinal.kgv.User.Service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.myfinal.kgv.User.DAOVO.UserVO;
@Service
public interface UserService {

		public void UserInsertData(UserVO vo);
		public List<UserVO> UserAllData();
		public int Loginaction(UserVO uv);
		

}
