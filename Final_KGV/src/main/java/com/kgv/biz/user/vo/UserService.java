package com.kgv.biz.user.vo;

import java.sql.SQLException;
import java.util.*;

public interface UserService {
	//jsp servlet ?��?�� haeva() execute()....
	
	public void insertUser(UserVO vo) throws ClassNotFoundException, SQLException; 
		//?��?��?��?��?��?��?�� 메소?��?�� ?��?���? �??��/ 구현?? child?��?�� 구현
	
	public void updateUser(UserVO vo) throws ClassNotFoundException, SQLException;
	
	public void deleteUser(UserVO vo) throws ClassNotFoundException, SQLException;
	
	public UserVO getUser(UserVO vo) throws ClassNotFoundException, SQLException;
	
	public ArrayList<UserVO> getUserList(UserVO vo) throws ClassNotFoundException, SQLException;
	

}
