package ghp.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("noticeDAO")
public class NoticeDAO  extends EgovAbstractDAO{
	
	public List<?> selectNoticeList() {
		// TODO Auto-generated method stub
		return list("noticeDAO.selectNoticeList");
	}
}
