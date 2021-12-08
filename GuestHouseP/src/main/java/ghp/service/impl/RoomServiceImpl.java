package ghp.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.example.sample.service.impl.EgovSampleServiceImpl;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import ghp.service.RoomService;

@Service("roomService")
public class RoomServiceImpl extends EgovAbstractServiceImpl implements RoomService{
	private static final Logger LOGGER = LoggerFactory.getLogger(EgovSampleServiceImpl.class);
	
	
	@Resource(name = "roomDAO")
	private RoomDAO roomDAO;
	
	@Override
	public List<?> selectRoomList() throws Exception {
		return roomDAO.selectRoomList();
	}
}
