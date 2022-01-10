package ghp.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import ghp.service.FaqListVO;
import ghp.service.QnaVO;
import ghp.service.QuestionService;

@Service("questionService")
public class QuestionImpl implements QuestionService {
	
	@Resource(name = "questionDAO")
	private QuestionDAO questionDAO;

	// SELECT
	
	@Override
	public List<?> selectQuestionList(FaqListVO vo) throws Exception {
		return questionDAO.selectQuestionList(vo);
	}
	
	@Override
	public List<?> selectQuestionList1(FaqListVO vo) throws Exception {
		return questionDAO.selectQuestionList1(vo);
	}
	
	@Override
	public List<?> selectQuestionList2(FaqListVO vo) throws Exception {
		return questionDAO.selectQuestionList2(vo);
	}
	
	@Override
	public List<?> selectQuestionList3(FaqListVO vo) throws Exception {
		return questionDAO.selectQuestionList3(vo);
	}
	
	// INSERT
	@Override
	public String insertQuestion(QnaVO vo) throws Exception {
		return questionDAO.insertQuestion(vo);
	}

}
