package ghp.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import ghp.service.NoticeListVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("noticeDAO")
public class NoticeDAO extends EgovAbstractDAO {

	public List<?> selectNoticeList(NoticeListVO vo) {
		return list("noticeDAO.selectNoticeList",vo);
	}

	public int selectNoticeTotal() {
		return (int) select("noticeDAO.selectNoticeTotal");
	}

	public NoticeListVO selectNoticeDetail(int ncseq) {
		return (NoticeListVO) select("noticeDAO.selectNoticeDetail", ncseq);
	}
}
