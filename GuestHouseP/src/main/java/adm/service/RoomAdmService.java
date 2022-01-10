package adm.service;

import java.util.List;

public interface RoomAdmService {
	List<?> selectRoomNameList() throws Exception;
	
	List<?> selectRoomList(RoomAdmVO vo) throws Exception;
	
	List<?> selectRoomPriceList(RoomAdmVO vo) throws Exception;
	
	List<?> selectRoomEtcList(RoomAdmVO vo) throws Exception;
	
	List<?> selectRoomDetailList(RoomAdmVO vo) throws Exception;
	
	List<?> selectRoomRPPList(RoomAdmVO vo) throws Exception;
	
	String insertRoomList(RoomAdmVO vo) throws Exception;
	
	int deleteRoomNameList(RoomAdmVO vo) throws Exception;
	
}
