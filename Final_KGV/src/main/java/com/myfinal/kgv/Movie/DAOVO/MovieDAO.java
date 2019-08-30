package com.myfinal.kgv.Movie.DAOVO;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface MovieDAO {
	
	
	public void MovieInsertData(MovieVO vo);

	public List<MovieVO> MovieAllData();
	
	
}
