package ghp.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import ghp.service.NoticeVO;

@Repository("noticeDAO")
public class NoticeDAO  extends EgovAbstractDAO{
	
	public List<?> selectNoticeList() {
		// TODO Auto-generated method stub
		return list("noticeDAO.selectNoticeList");
	}
	
	public NoticeVO selectNoticeDetailList(NoticeVO vo) {
		// TODO Auto-generated method stub
		return (NoticeVO) select("noticeDAO.selectNoticeDetailList",vo);
	}
	
	public String insertNoticeList(NoticeVO vo) {
		// TODO Auto-generated method stub
		return (String) insert("noticeDAO.insertNoticeList",vo);
	}
	
	public int updateNoticeList(NoticeVO vo) {
		return update("noticeDAO.updateNoticeList",vo);
	}
	
	public int deleteNoticeList(NoticeVO vo) {
		return delete("noticeDAO.deleteNoticeList",vo);
	}
}
