package com.myfinal.kgv.User.DAOVO;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.myfinal.kgv.Movie.DAOVO.MovieVO;
@Repository
public interface UserDAO {
	public List<UserVO> UserAllData();
	
	public void UserInsertData(UserVO vo);
	
	public UserVO Loginaction(UserVO vo);

	public List<UserVO> UserLogin(UserVO vo);
	
	public List<UserVO> findId(UserVO vo) throws Exception;

	public int checkOverId(String user_id);

	public List<PageVO> Mypage_test(String string);

	public void Mypage_delete(String play_day, String play_seat);
}
