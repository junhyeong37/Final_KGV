package com.myfianl.kgv.Join.DAOVO;


import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface JoinDAO {
	
	public List<TicketVO> reserv();
	
}
