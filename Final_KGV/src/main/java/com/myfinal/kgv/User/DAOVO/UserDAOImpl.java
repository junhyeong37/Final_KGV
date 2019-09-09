package com.myfinal.kgv.User.DAOVO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myfinal.kgv.Movie.DAOVO.MovieVO;


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
	public List<UserVO> UserLogin(UserVO vo) {
		// TODO Auto-generated method stub
		
		return sqlSession.selectList(namespace+".UserLogin", vo);
	}
	
	/*@Override
	public List<UserVO> findId(UserVO vo) throws Exception {
		// TODO Auto-generated method stub
		Logger logger=Logger.getLogger(this.getClass());
		logger.info("���̵�ã�� dao ����");
		logger.info(vo.toString());
		return sqlSession.selectList(namespace + ".findId" , vo);

	}*/

	@Override
	public int checkOverId(String user_id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".checkOverId", user_id);
	}

	@Override
	public List<UserVO> findId(UserVO vo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PageVO> Mypage_test(String string) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+".Mypage_test",string);
		
	}

	@Override
	public void Mypage_delete(String play_day, String play_seat) {
		// TODO Auto-generated method stub
		DeleteVO vo = new DeleteVO();
		vo.setMovie_no(play_day);
		vo.setPlay_seat(play_seat);
		System.out.println(play_day + " :::::::::::::: " + play_seat);
		
		sqlSession.delete(namespace+".Mypage_delete",vo);
	}


	
}
