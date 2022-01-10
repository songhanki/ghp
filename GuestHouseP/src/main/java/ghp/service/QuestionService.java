package ghp.service;

import java.util.List;
import java.util.Map;

public interface QuestionService {
	
	String insertQuestion(QnaVO vo) throws Exception;
	
	List<?> selectQuestionList(FaqListVO vo) throws Exception;

	List<?> selectQuestionList1(FaqListVO vo) throws Exception;
	
	List<?> selectQuestionList2(FaqListVO vo) throws Exception;

	List<?> selectQuestionList3(FaqListVO vo) throws Exception;
}
