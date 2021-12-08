package ghp.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("faqDAO")
public class FaqDAO  extends EgovAbstractDAO{
	
	public List<?> selectFaqList() {
		// TODO Auto-generated method stub
		return list("faqDAO.selectFaqList");
	}
}
