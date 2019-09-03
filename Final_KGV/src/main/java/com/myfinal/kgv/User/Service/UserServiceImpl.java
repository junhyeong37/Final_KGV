package com.myfinal.kgv.User.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myfinal.kgv.User.DAOVO.LoginVO;
import com.myfinal.kgv.User.DAOVO.UserDAO;
import com.myfinal.kgv.User.DAOVO.UserVO;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDAO dao;
	@Inject
	private SqlSession session;
	
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
	
	@Override
	public List<UserVO> findId(UserVO vo) throws Exception {
		// TODO Auto-generated method stub
		Logger logger=Logger.getLogger(this.getClass());
		logger.info("���̵� ã�� service ����");
		List<UserVO> list = dao.findId(vo);
		/*List<UserVO> findId = new List<UserVO>(); */
		ArrayList<String> findId=new ArrayList<String>();
		for(int i =0; i <list.size(); i ++) {
			String Id = list.get(i).getUser_id();
			findId.add(Id);

		}
		return dao.findId(vo);
	}

	@Override
	public int userIdCheck(String user_id) {
		// TODO Auto-generated method stub
		
		return dao.checkOverId(user_id);
	}

	@Override
	public int CheckDuplication(String inputId) {
		System.out.println(inputId);
		int idCount = session.selectOne("checkDuplicationId", inputId.replace("=", ""));
		return idCount;
	}

	@Override
	public int loginCheck(String inputId, String inputPw) {
		// TODO Auto-generated method stub
		LoginVO lv = new LoginVO();
		System.out.println(inputId.replace("=", ""));
		
		lv.setInputId(inputId.replace("=", ""));
		lv.setInputPw(inputPw.replace("=", ""));
		
		System.out.println(lv.getInputId());
		
		int idCount = session.selectOne("loginCheck",lv);
		return idCount;
	}

}
