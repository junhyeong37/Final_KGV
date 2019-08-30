package com.myfinal.kgv.Movie.Service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.myfinal.kgv.Movie.DAOVO.MovieVO;

@Service
public interface MovieService {

	public void MovieInsertData(MovieVO vo);
	public List<MovieVO> MovieAllData();
	
}
