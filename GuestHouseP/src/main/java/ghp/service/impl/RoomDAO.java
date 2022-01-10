package ghp.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import ghp.service.ReserveListVO;
import ghp.service.RoomListVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("roomDAO")
public class RoomDAO extends EgovAbstractDAO {

	//SELECT
	public List<?> selectRoomList(RoomListVO vo) {
		return list("roomDAO.selectRoomList",vo);
	}

	public List<?> selectSearchRoomList(RoomListVO vo) {
		return list("roomDAO.selectSearchRommList",vo);
	}

	public int selectRoomTotal(RoomListVO vo) {
		return (int) select("roomlistDAO.selectRoomTotal",vo);
	}
	
	public RoomListVO selectRoomDetail(RoomListVO vo) {
		return (RoomListVO) select("roomDAO.selectRoomDetail",vo);
	}
	
	// INSERT
	public String insertRoomReserve(ReserveListVO vo) {
		return (String) insert("roomDAO.insertRoomReserve",vo);
	}

}
