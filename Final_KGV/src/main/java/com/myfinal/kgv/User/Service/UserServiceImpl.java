package com.myfinal.kgv.User.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myfinal.kgv.User.DAOVO.UserDAO;
import com.myfinal.kgv.User.DAOVO.UserVO;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDAO dao;
	
	@Override
	public List<UserVO> UserAllData() {
		// TODO Auto-generated method stub
		return dao.UserAllData();
	}
	
	@Override
	public void UserInsertData(UserVO vo) {
		// TODO Auto-generated method stub
		dao.UserInsertData(vo);
	}
	@Override
	public int Loginaction(UserVO uv) {
		
		try {
			dao.Loginaction(uv);
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public List<UserVO> UserLogin(UserVO vo) {
		// TODO Auto-generated method stub
		;
		return dao.UserLogin(vo);
	}

}
