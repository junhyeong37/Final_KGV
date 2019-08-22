package com.myfinal.kgv.user.daovo;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<UserVO> usermain() {
		return sqlSession.selectList("Users.listAll");
	}
}
