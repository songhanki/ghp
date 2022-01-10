package ghp.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import ghp.service.FaqListVO;
import ghp.service.QnaVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("questionDAO")
public class QuestionDAO extends EgovAbstractDAO {

	// SELECT
	public List<?> selectQuestionList(FaqListVO vo) {
		return list("questionDAO.selectQuestionList1",vo);
	}
	
	public List<?> selectQuestionList1(FaqListVO vo) {
		return list("questionDAO.selectQuestionList1",vo);
	}

	public List<?> selectQuestionList2(FaqListVO vo) {
		return list("questionDAO.selectQuestionList2",vo);
	}
	
	public List<?> selectQuestionList3(FaqListVO vo) {
		return list("questionDAO.selectQuestionList3",vo);
	}

	// INSERT
	public String insertQuestion(QnaVO vo) {
		return (String) insert("questionDAO.insertQuestion",vo);
	}

}
