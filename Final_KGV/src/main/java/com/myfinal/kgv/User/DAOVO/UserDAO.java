package com.myfinal.kgv.User.DAOVO;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Repository;
@Repository
public interface UserDAO {
	public List<UserVO> UserAllData();
	
	public void UserInsertData(UserVO vo);
	
	public UserVO Loginaction(UserVO vo);
	

}
