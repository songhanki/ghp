package adm.service;

import java.util.List;

public interface NoticeAdmService {
	List<?> selectAdmNoticeList() throws Exception;
	NoticeAdmVO selectAdmNoticeDetailList(NoticeAdmVO vo) throws Exception;
	String insertAdmNoticeList(NoticeAdmVO vo) throws Exception;
	int updateAdmNoticeList(NoticeAdmVO vo) throws Exception;
	int deleteAdmNoticeList(NoticeAdmVO vo) throws Exception;
}
