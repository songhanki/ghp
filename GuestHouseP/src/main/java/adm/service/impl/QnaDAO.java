package adm.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("qnaDAO")
public class QnaDAO  extends EgovAbstractDAO{
	
	public List<?> selectQnaList() {
		// TODO Auto-generated method stub
		return list("qnaDAO.selectQnaList");
	}
}
