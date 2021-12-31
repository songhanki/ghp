package ghp.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.example.sample.service.impl.EgovSampleServiceImpl;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import ghp.service.RoomService;
import ghp.service.RoomVO;

@Service("roomService")
public class RoomServiceImpl implements RoomService{
	private static final Logger LOGGER = LoggerFactory.getLogger(EgovSampleServiceImpl.class);
	
	
	@Resource(name = "roomDAO")
	private RoomDAO roomDAO;
	
	@Override
	public List<?> selectRoomNameList() throws Exception {
		return roomDAO.selectRoomNameList();
	}
	
	@Override
	public List<?> selectRoomList(RoomVO vo) throws Exception{
		return roomDAO.selectRoomList(vo);
	}
	
	@Override
	public List<?> selectRoomPriceList(RoomVO vo){
		return roomDAO.selectRoomPriceList(vo);
	}
	
	@Override
	public List<?> selectRoomEtcList(RoomVO vo){
		return roomDAO.selectRoomEtcList(vo);
	}
	
	@Override
	public List<?> selectRoomDetailList(RoomVO vo){
		return roomDAO.selectRoomDetailList(vo);
	}
	
	@Override
	public List<?> selectRoomRPPList(RoomVO vo){
		return roomDAO.selectRoomRPPList(vo);
	}
	
	@Override
	public String insertRoomList(RoomVO vo) {
		return roomDAO.insertRoomList(vo);
	}
}
