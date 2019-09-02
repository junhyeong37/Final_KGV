package com.myfinal.kgv.User.DAOVO;

import java.util.List;

import org.springframework.stereotype.Repository;
import java.util.List;

import org.springframework.stereotype.Repository;
@Repository
public interface UserDAO {
	public List<UserVO> UserAllData();
	
	public void UserInsertData(UserVO vo);
	
	public UserVO Loginaction(UserVO vo);

	public List<UserVO> UserLogin(UserVO vo);
	
	public List<UserVO> findId(UserVO vo) throws Exception;
}
