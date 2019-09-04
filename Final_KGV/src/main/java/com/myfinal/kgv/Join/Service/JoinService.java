package com.myfinal.kgv.Join.Service;

import java.util.List;
import org.springframework.stereotype.Service;
import com.myfianl.kgv.Join.DAOVO.TicketVO;


@Service
public interface JoinService {
	public List<TicketVO> reserv();
}
