package com.myfinal.kgv.Movie.DAOVO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MovieDAOImpl implements MovieDAO {

	@Autowired
	private static final String namespace="mapper.Movie-mapper";
	
	@Autowired 
	private SqlSession sqlSession;
	
	@Override
	public List<MovieVO> MovieAllData() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+".MovieAllData");
	}
	
	@Override
	public void MovieInsertData(MovieVO vo) {
		sqlSession.insert(namespace+".MovieInsertData",vo);
	}

	@Override
	public void play(PlayVO vo) {
		// TODO Auto-generated method stub
		sqlSession.selectList(namespace+".play",vo);
	}


	
}
