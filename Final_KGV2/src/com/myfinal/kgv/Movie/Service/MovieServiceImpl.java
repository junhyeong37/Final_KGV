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
	public List<MovieVO> MovieAllData(String photo){
		return dao.MovieAllData(photo);
	}
	
	@Override
	public void MovieInsertData(MovieVO vo) {
		// TODO Auto-generated method stub
		dao.MovieInsertData(vo);
	}
	
//	@Override
//	public void MovieSearchData(MovieVO vo) {
//		// TODO Auto-generated method stub
//		dao.MovieSearchData(vo);
//	
//	}
	@Override
	public List<MovieVO> MovieSearchData(MovieVO vo) {
		// TODO Auto-generated method stub
		
		return dao.MovieSearchData(vo);
	
	}
	@Override
	public List<MovieVO> MovieSearchData2(MovieVO vo) {
		// TODO Auto-generated method stub
		
		return dao.MovieSearchData(vo);
	
	}
}
