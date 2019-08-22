package com.kgv.biz.user.vo;

import java.sql.SQLException;
import java.util.*;

public interface UserService {
	//jsp servlet ?óê?Ñú haeva() execute()....
	
	public void insertUser(UserVO vo) throws ClassNotFoundException, SQLException; 
		//?ù∏?Ñ∞?éò?ù¥?ä§?óê?Ñú Î©îÏÜå?ìú?äî ?Ñ†?ñ∏Îß? Í∞??ä•/ Íµ¨ÌòÑ?? child?óê?Ñú Íµ¨ÌòÑ
	
	public void updateUser(UserVO vo) throws ClassNotFoundException, SQLException;
	
	public void deleteUser(UserVO vo) throws ClassNotFoundException, SQLException;
	
	public UserVO getUser(UserVO vo) throws ClassNotFoundException, SQLException;
	
	public ArrayList<UserVO> getUserList(UserVO vo) throws ClassNotFoundException, SQLException;
	

}
