package adm.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import adm.service.NoticeAdmVO;

@Repository("admNoticeDAO")
public class NoticeAdmDAO  extends EgovAbstractDAO{
	
	public List<?> selectAdmNoticeList() {
		// TODO Auto-generated method stub
		return list("admNoticeDAO.selectNoticeList");
	}
	
	public NoticeAdmVO selectAdmNoticeDetailList(NoticeAdmVO vo) {
		// TODO Auto-generated method stub
		return (NoticeAdmVO) select("admNoticeDAO.selectNoticeDetailList",vo);
	}
	
	public String insertAdmNoticeList(NoticeAdmVO vo) {
		// TODO Auto-generated method stub
		return (String) insert("admNoticeDAO.insertNoticeList",vo);
	}
	
	public int updateAdmNoticeList(NoticeAdmVO vo) {
		return update("admNoticeDAO.updateNoticeList",vo);
	}
	
	public int deleteAdmNoticeList(NoticeAdmVO vo) {
		return delete("admNoticeDAO.deleteNoticeList",vo);
	}
}
