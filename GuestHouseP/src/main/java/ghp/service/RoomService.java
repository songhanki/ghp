package ghp.service;

import java.util.List;

public interface RoomService {
	List<?> selectRoomNameList() throws Exception;
	
	List<?> selectRoomList(RoomVO vo) throws Exception;
	
	List<?> selectRoomPriceList(RoomVO vo) throws Exception;
	
	List<?> selectRoomEtcList(RoomVO vo) throws Exception;
	
	List<?> selectRoomDetailList(RoomVO vo) throws Exception;
	
	List<?> selectRoomRPPList(RoomVO vo) throws Exception;
	
	String insertRoomList(RoomVO vo) throws Exception;
	
	int deleteRoomNameList(RoomVO vo) throws Exception;
	
}
