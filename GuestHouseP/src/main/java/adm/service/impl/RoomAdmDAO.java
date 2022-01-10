package adm.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import adm.service.RoomAdmVO;

@Repository("admRoomDAO")
public class RoomAdmDAO  extends EgovAbstractDAO{
	
	public List<?> selectRoomNameList() {
		// TODO Auto-generated method stub
		return list("admRoomDAO.selectRoomNameList");
	}

	
	public List<?> selectRoomList(RoomAdmVO vo){
		return list("admRoomDAO.selectRoomList",vo);
	}
	
	public List<?> selectRoomPriceList(RoomAdmVO vo){
		return list("admRoomDAO.selectRoomPriceList",vo);
	}
	
	public List<?> selectRoomEtcList(RoomAdmVO vo){
		return list("admRoomDAO.selectRoomEtcList",vo);
	}	
	
	public List<?> selectRoomDetailList(RoomAdmVO vo){
		return list("admRoomDAO.selectRoomDetailList",vo);
	}
	
	public List<?> selectRoomRPPList(RoomAdmVO vo){
		return list("admRoomDAO.selectRoomRPPList",vo);
	}
	
	public String insertRoomList(RoomAdmVO vo){
		return (String) insert("admRoomDAO.insertRoomList",vo);
	}
	
	public int deleteRoomNameList(RoomAdmVO vo){
		return delete("admRoomDAO.deleteRoomNameList",vo);
	}
}
