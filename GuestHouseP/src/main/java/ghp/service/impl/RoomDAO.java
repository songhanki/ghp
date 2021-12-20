package ghp.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import ghp.service.RoomVO;

@Repository("roomDAO")
public class RoomDAO  extends EgovAbstractDAO{
	
	public List<?> selectRoomNameList() {
		// TODO Auto-generated method stub
		return list("roomDAO.selectRoomNameList");
	}

	
	public List<?> selectRoomList(RoomVO vo){
		return list("roomDAO.selectRoomList",vo);
	}
	
	public List<?> selectRoomPriceList(RoomVO vo){
		return list("roomDAO.selectRoomPriceList",vo);
	}
	
	public List<?> selectRoomEtcList(RoomVO vo){
		return list("roomDAO.selectRoomEtcList",vo);
	}
}
