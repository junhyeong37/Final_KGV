package com.kgv.biz.user.dao;



import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.kgv.biz.user.vo.UserService;
import com.kgv.biz.user.vo.UserVO;

/*@Service
public class UserDAO implements UserService {
	
	@Autowired
	SqlSession sqlSession;
	
	private static SqlSessionFactory sqlSessionFactory1;
	static {
		String myxml = "Mybatis-config.xml";
		InputStream istream = null;
		try {
			istream = Resources.getResourceAsStream(myxml);
		} catch(IOException e) {
			e.printStackTrace();
		}
		sqlSessionFactory1 = new SqlSessionFactoryBuilder().build(istream);
	}
	
	
	public static List<UserVO> userAllData(){
		return sqlSessionFactory1.openSession().selectList("userAllData");
	}
	
	public static UserVO userSearchId(String User_email) {
		return sqlSessionFactory1.openSession().selectOne("userSearchId",User_email);
	}
	
	public static UserVO userSearchPw(String User_id) {
		return sqlSessionFactory1.openSession().selectOne("userSearchId",User_id);
	}
	
	public static int userUpdateData (UserVO userVO) {
		SqlSession sqlsession1=sqlSessionFactory1.openSession();
		sqlsession1.update("userUpdateData",userVO);
		sqlsession1.commit(); ///////////값 저장
		return sqlsession1.update("userUpdateData",userVO);
	}
	
	public static int userInsertData(UserVO userVO) {
		SqlSession sqlsession1=sqlSessionFactory1.openSession();
		sqlsession1.update("userUpdateData",userVO);
		sqlsession1.commit(); //////////값 저장
		return sqlsession1.update("userUpdateData",userVO);
	}
	
	public static int userDeleteData(UserVO userVO) {
		SqlSession sqlsession1=sqlSessionFactory1.openSession();
		sqlsession1.delete("userDeleteData",userVO);
		sqlsession1.commit(); ///////////값 저장
		return sqlsession1.delete("userDeleteData",userVO);
	}
	
	public void UserInsertData(UserVO vo);
	
	public UserVO Loginaction(UserVO uv);
}
*/