package com.myfinal.kgv.User.Service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.myfinal.kgv.User.DAOVO.UserVO;
@Service
public interface UserService {
		public void UserInsertData(UserVO vo);
		public List<UserVO> UserAllData();
		public int Loginaction(UserVO uv);
		public int LoginView(UserVO vo);
		

}
