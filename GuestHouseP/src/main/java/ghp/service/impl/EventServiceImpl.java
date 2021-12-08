package ghp.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.example.sample.service.impl.EgovSampleServiceImpl;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import ghp.service.EventService;
import ghp.service.RoomService;

@Service("eventService")
public class EventServiceImpl extends EgovAbstractServiceImpl implements EventService{
	private static final Logger LOGGER = LoggerFactory.getLogger(EgovSampleServiceImpl.class);
	
	
	@Resource(name = "eventDAO")
	private EventDAO eventDAO;
	
	@Override
	public List<?> selectEventList() throws Exception {
		return eventDAO.selectEventList();
	}
}
