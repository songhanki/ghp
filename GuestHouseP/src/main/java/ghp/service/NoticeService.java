package ghp.service;

import java.util.List;

public interface NoticeService {
	List<?> selectNoticeList() throws Exception;
	NoticeVO selectNoticeDetailList(NoticeVO vo) throws Exception;
	String insertNoticeList(NoticeVO vo) throws Exception;
	int updateNoticeList(NoticeVO vo) throws Exception;
	int deleteNoticeList(NoticeVO vo) throws Exception;
}
