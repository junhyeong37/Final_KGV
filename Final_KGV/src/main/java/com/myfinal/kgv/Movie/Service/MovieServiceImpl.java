package com.myfinal.kgv.Movie.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myfinal.kgv.Movie.DAOVO.MovieDAO;
import com.myfinal.kgv.Movie.DAOVO.MovieVO;

@Service
public class MovieServiceImpl implements MovieService {

	@Autowired
	private MovieDAO dao;
	
	@Override
	public List<MovieVO> MovieAllData(){
		return dao.MovieAllData();
	}
	
	@Override
	public void MovieInsertData(MovieVO vo) {
		// TODO Auto-generated method stub
		dao.MovieInsertData(vo);
	}
}
