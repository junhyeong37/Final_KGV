package com.myfianl.kgv.Join.DAOVO;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class JoinDAOImpl implements JoinDAO {

	@Autowired
	private static final String namespace="mapper.Join-mapper";
	@Autowired 
	private SqlSession sqlSession;

	@Override
	public List<TicketVO> reserv() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+".reserv");
	}
	



}
