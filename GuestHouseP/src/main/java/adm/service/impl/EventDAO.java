package adm.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("eventDAO")
public class EventDAO  extends EgovAbstractDAO{
	
	public List<?> selectEventList() {
		// TODO Auto-generated method stub
		return list("eventDAO.selectEventList");
	}
}
