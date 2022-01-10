package adm.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import adm.service.GhpVO;

/*
 *  ibatis와의 연결을 담당
 */
@Repository("ghpDAO")
public class GhpDAO extends EgovAbstractDAO {
	
	public List<?> selectEmpList(GhpVO vo) {
		return list("ghpDAO.selectEmpList",vo);
	}
}
