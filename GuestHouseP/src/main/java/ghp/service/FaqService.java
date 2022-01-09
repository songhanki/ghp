package ghp.service;

import java.util.List;

public interface FaqService {
	List<?> selectFaqList() throws Exception;
	FaqVO selectFAQDetailList(FaqVO vo) throws Exception;
	String insertFAQList(FaqVO vo) throws Exception;
	int updateFAQList(FaqVO vo) throws Exception;
	int deleteFAQList(FaqVO vo) throws Exception;
}
