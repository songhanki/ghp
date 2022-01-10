package adm.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("memberAdmDAO")
public class MemberAdmDAO extends EgovAbstractDAO {

	public List<?> selectSleepMemberList() {
		// TODO Auto-generated method stub
		return list("memberAdmDAO.selectSleepMemberList");
	}
	
}
