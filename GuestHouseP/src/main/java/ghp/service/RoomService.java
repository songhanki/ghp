package ghp.service;

import java.util.List;

public interface RoomService {

	// 기본 SELECT
	List<?> selectRoomList(RoomListVO vo) throws Exception;
	// 검색 SELECT
	List<?> selectSearchRoomList(RoomListVO vo) throws Exception;
	// RoomTotal
	int selectRoomTotal(RoomListVO vo) throws Exception;
	// RoomDetail
	RoomListVO selectRoomDetail(RoomListVO vo) throws Exception;
	// RoomReserve
	String insertRoomReserve(ReserveListVO vo) throws Exception;
}
