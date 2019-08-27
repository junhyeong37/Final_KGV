package com.myfinal.kgv.User.DAOVO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class UserDAOImpl implements UserDAO{
	
	@Autowired
	private static final String namespace="mapper.User-mapper";
	
	@Autowired 
	private SqlSession sqlSession;
	
	@Override
	public List<UserVO> UserAllData() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+".UserAllData");
	}

	@Override
	public void UserInsertData(UserVO vo) {
		// TODO Auto-generated method stub
		 sqlSession.insert(namespace+".UserInsertData",vo);
	}

	@Override
	public UserVO Loginaction(UserVO uv) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".Loginaction", uv);
	}

	@Override
	public void UserLogin(UserVO vo) {
		// TODO Auto-generated method stub
		sqlSession.selectOne(namespace+".UserLogin", vo);
	}

	
}
