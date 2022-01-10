package adm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.example.sample.service.impl.EgovSampleServiceImpl;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import adm.service.NoticeAdmService;
import adm.service.NoticeAdmVO;
import adm.service.RoomAdmService;

@Service("noticeAdmService")
public class NoticeAdmServiceImpl extends EgovAbstractServiceImpl implements NoticeAdmService{
	private static final Logger LOGGER = LoggerFactory.getLogger(EgovSampleServiceImpl.class);
	
	
	@Resource(name = "admNoticeDAO")
	private NoticeAdmDAO noticeAdmDAO;
	
	@Override
	public List<?> selectAdmNoticeList() throws Exception {
		return noticeAdmDAO.selectAdmNoticeList();
	}
	
	@Override
	public NoticeAdmVO selectAdmNoticeDetailList(NoticeAdmVO vo) throws Exception {
		return noticeAdmDAO.selectAdmNoticeDetailList(vo);
	}
	
	@Override
	public String insertAdmNoticeList(NoticeAdmVO vo) throws Exception {
		return noticeAdmDAO.insertAdmNoticeList(vo);
	}
	
	@Override
	public int updateAdmNoticeList(NoticeAdmVO vo) throws Exception {
		return noticeAdmDAO.updateAdmNoticeList(vo);
	}	
	
	@Override
	public int deleteAdmNoticeList(NoticeAdmVO vo) throws Exception {
		return noticeAdmDAO.deleteAdmNoticeList(vo);
	}
	
	
}
