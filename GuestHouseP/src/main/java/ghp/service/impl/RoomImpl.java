package ghp.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import ghp.service.ReserveListVO;
import ghp.service.RoomListVO;
import ghp.service.RoomService;

@Service("roomService")
public class RoomImpl implements RoomService {

	@Resource(name = "roomDAO")
	private RoomDAO roomDAO;
	// SELECT 
	@Override
	public List<?> selectRoomList(RoomListVO vo) throws Exception {
		return roomDAO.selectRoomList(vo);
	}
	// RoomSeach SELECT
	@Override
	public List<?> selectSearchRoomList(RoomListVO vo) throws Exception {
		return roomDAO.selectSearchRoomList(vo);
	}
	// RoomTotal
	@Override
	public int selectRoomTotal(RoomListVO vo) throws Exception {
		return roomDAO.selectRoomTotal(vo);
	}
	// RoomDetail
	@Override
	public RoomListVO selectRoomDetail(RoomListVO vo) throws Exception {
		return roomDAO.selectRoomDetail(vo);
	}
	// RoomReserve
	@Override
	public String insertRoomReserve(ReserveListVO vo) throws Exception {
		return roomDAO.insertRoomReserve(vo);
	}
}
