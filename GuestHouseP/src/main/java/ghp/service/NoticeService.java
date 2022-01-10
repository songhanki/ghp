package ghp.service;

import java.util.List;

public interface NoticeService {

	List<?> selectNoticeList(NoticeListVO vo) throws Exception;

	int selectNoticeTotal() throws Exception;

	NoticeListVO selectNoticeDetail(int ncseq) throws Exception;

}
