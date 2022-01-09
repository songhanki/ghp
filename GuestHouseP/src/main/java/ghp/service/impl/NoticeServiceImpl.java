package ghp.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.example.sample.service.impl.EgovSampleServiceImpl;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import ghp.service.NoticeService;
import ghp.service.NoticeVO;
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
	
	@Override
	public NoticeVO selectNoticeDetailList(NoticeVO vo) throws Exception {
		return noticeDAO.selectNoticeDetailList(vo);
	}
	
	@Override
	public String insertNoticeList(NoticeVO vo) throws Exception {
		return noticeDAO.insertNoticeList(vo);
	}
	
	@Override
	public int updateNoticeList(NoticeVO vo) throws Exception {
		return noticeDAO.updateNoticeList(vo);
	}	
	
	@Override
	public int deleteNoticeList(NoticeVO vo) throws Exception {
		return noticeDAO.deleteNoticeList(vo);
	}
	
	
}
