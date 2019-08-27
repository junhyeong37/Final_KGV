package com.myfinal.kgv.User.DAOVO;

import java.util.List;

import org.springframework.stereotype.Repository;
@Repository
public interface UserDAO {
	public List<UserVO> UserAllData();
	
	public void UserInsertData(UserVO vo);
	
	public UserVO Loginaction(UserVO vo);

	public void UserLogin(UserVO vo);
}
