package com.myfinal.kgv.Movie.DAOVO;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface MovieDAO {
   
   
   public void MovieInsertData(MovieVO vo);

   public List<MovieVO> MovieAllData();
   
   public List<MovieVO> MovieAllData2();
   
   public List<MovieVO> MovieAllData(String photo);
   
//   public void MovieSearchData(MovieVO vo);

   public List<MovieVO> MovieSearchData(MovieVO vo);

   public List<MovieVO> MovieSearchData2(MovieVO vo);
   
   
   public void play(PlayVO vo);

   public List<reviewVO> ReviewInsert(reviewVO vo);

public List<reviewVO> ReviewView(reviewVO vo);

   
   
   
}