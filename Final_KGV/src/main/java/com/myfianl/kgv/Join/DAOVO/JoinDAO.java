package com.myfianl.kgv.Join.DAOVO;


import java.util.List;

import org.springframework.stereotype.Repository;

import com.myfinal.kgv.Movie.DAOVO.MovieVO;

@Repository
public interface JoinDAO {
	
	public List<TicketVO> reserv(com.myfianl.kgv.Join.DAOVO.MovieVO mvv, ScheduleroomVO srv, ScheduleVO scrv, TicketVO tv);
	
}
