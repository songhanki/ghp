package ghp.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("roomDAO")
public class RoomDAO  extends EgovAbstractDAO{
	
	public List<?> selectRoomList() {
		// TODO Auto-generated method stub
		return list("roomDAO.selectRoomList");
	}
}
