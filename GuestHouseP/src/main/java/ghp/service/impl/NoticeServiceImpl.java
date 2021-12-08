package ghp.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.example.sample.service.impl.EgovSampleServiceImpl;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import ghp.service.NoticeService;
import ghp.service.RoomService;

@Service("noticeService")
public class NoticeServiceImpl extends EgovAbstractServiceImpl implements NoticeService{
	private static final Logger LOGGER = LoggerFactory.getLogger(EgovSampleServiceImpl.class);
	
	
	@Resource(name = "noticeDAO")
	private NoticeDAO noticeDAO;
	
	@Override
	public List<?> selectNoticeList() throws Exception {
		return noticeDAO.selectNoticeList();
	}
}
