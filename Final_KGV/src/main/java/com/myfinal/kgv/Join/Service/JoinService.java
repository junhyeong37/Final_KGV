package com.myfinal.kgv.Join.Service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.myfianl.kgv.Join.DAOVO.ScheduleVO;
import com.myfianl.kgv.Join.DAOVO.ScheduleroomVO;
import com.myfianl.kgv.Join.DAOVO.TicketVO;


@Service
public interface JoinService {
	public List<TicketVO> reserv(com.myfianl.kgv.Join.DAOVO.MovieVO mvv, ScheduleroomVO srv, ScheduleVO scrv, TicketVO tv);
}
