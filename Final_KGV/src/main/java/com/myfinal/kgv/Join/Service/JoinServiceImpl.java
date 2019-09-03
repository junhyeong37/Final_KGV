package com.myfinal.kgv.Join.Service;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myfianl.kgv.Join.DAOVO.JoinDAO;
import com.myfianl.kgv.Join.DAOVO.ScheduleVO;
import com.myfianl.kgv.Join.DAOVO.ScheduleroomVO;
import com.myfianl.kgv.Join.DAOVO.TicketVO;

@Service
public class JoinServiceImpl implements JoinService {
	
	@Autowired
	private JoinDAO dao; 
	@Inject
	private SqlSession session;
	
	@Override
	public List<TicketVO> reserv(com.myfianl.kgv.Join.DAOVO.MovieVO mvv, ScheduleroomVO srv, ScheduleVO scrv,
			TicketVO tv) {
		// TODO Auto-generated method stub
		return dao.reserv(mvv, srv, scrv, tv);
	}


	
}
