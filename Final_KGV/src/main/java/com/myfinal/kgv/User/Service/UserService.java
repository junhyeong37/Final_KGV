package com.myfinal.kgv.User.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myfinal.kgv.User.DAOVO.FindIdVO;
import com.myfinal.kgv.User.DAOVO.PageVO;
import com.myfinal.kgv.User.DAOVO.UserDAO;
import com.myfinal.kgv.User.DAOVO.UserVO;
@Service
public interface UserService {

		public void UserInsertData(UserVO vo);
		public List<UserVO> UserAllData();
		public int Loginaction(UserVO uv);
		public List<UserVO> UserLogin(UserVO vo);
		public List<UserVO> findId(UserVO vo) throws Exception;
		public int userIdCheck(String user_id);
		public int CheckDuplication(String inputId);
		
		
		public int IdCheck(String inputName, String inputTel);
		public List<UserVO> SelectId(UserVO vo);
		public List<PageVO> Mypage_test(String user_id);
		public void Mypage_delete(String play_day, String play_seat);
		
		
		
		

		
}
