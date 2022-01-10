package ghp.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import ghp.service.NoticeListVO;
import ghp.service.NoticeService;

@Service("noticeService")
public class NoticeImpl implements NoticeService {

	@Resource(name = "noticeDAO")
	private NoticeDAO noticeDAO;
	
	@Override
	public List<?> selectNoticeList(NoticeListVO vo) throws Exception {
		return noticeDAO.selectNoticeList(vo);
	}

	@Override
	public int selectNoticeTotal() throws Exception {
		return noticeDAO.selectNoticeTotal();
	}

	@Override
	public NoticeListVO selectNoticeDetail(int ncseq) throws Exception {
		return noticeDAO.selectNoticeDetail(ncseq);
	}
}
