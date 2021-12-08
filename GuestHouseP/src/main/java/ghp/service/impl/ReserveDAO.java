package ghp.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("reserveDAO")
public class ReserveDAO  extends EgovAbstractDAO{
	
	public List<?> selectReserveList() {
		// TODO Auto-generated method stub
		return list("reserveDAO.selectReserveList");
	}
}
