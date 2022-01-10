package adm.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import adm.service.FaqVO;

@Repository("faqDAO")
public class FaqDAO  extends EgovAbstractDAO{
	
	public List<?> selectFaqList() {
		// TODO Auto-generated method stub
		return list("faqDAO.selectFaqList");
	}
	
	public FaqVO selectFAQDetailList(FaqVO vo) {
		return (FaqVO) select("faqDAO.selectFAQDetailList", vo);
	}
	
	public String insertFAQList(FaqVO vo) {
		return  (String) insert("faqDAO.insertFAQList", vo);
	}
	
	public int updateFAQList(FaqVO vo) {
		return  update("faqDAO.updateFAQList", vo);
	}

	public int deleteFAQList(FaqVO vo) {
		return  delete("faqDAO.deleteFAQList", vo);
	}
}

