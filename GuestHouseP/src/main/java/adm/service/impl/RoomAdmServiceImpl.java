package adm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.example.sample.service.impl.EgovSampleServiceImpl;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import adm.service.RoomAdmService;
import adm.service.RoomAdmVO;

@Service("roomAdmService")
public class RoomAdmServiceImpl implements RoomAdmService{
	private static final Logger LOGGER = LoggerFactory.getLogger(EgovSampleServiceImpl.class);
	
	
	@Resource(name = "admRoomDAO")
	private RoomAdmDAO roomDAO;
	
	@Override
	public List<?> selectRoomNameList() throws Exception {
		return roomDAO.selectRoomNameList();
	}
	
	@Override
	public List<?> selectRoomList(RoomAdmVO vo) throws Exception{
		return roomDAO.selectRoomList(vo);
	}
	
	@Override
	public List<?> selectRoomPriceList(RoomAdmVO vo){
		return roomDAO.selectRoomPriceList(vo);
	}
	
	@Override
	public List<?> selectRoomEtcList(RoomAdmVO vo){
		return roomDAO.selectRoomEtcList(vo);
	}
	
	@Override
	public List<?> selectRoomDetailList(RoomAdmVO vo){
		return roomDAO.selectRoomDetailList(vo);
	}
	
	@Override
	public List<?> selectRoomRPPList(RoomAdmVO vo){
		return roomDAO.selectRoomRPPList(vo);
	}
	
	@Override
	public String insertRoomList(RoomAdmVO vo) {
		return roomDAO.insertRoomList(vo);
	}
	
	@Override
	public int deleteRoomNameList(RoomAdmVO vo) {
		return roomDAO.deleteRoomNameList(vo);
	}
}
