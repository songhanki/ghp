package ghp.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import ghp.service.MemberVO;

@Repository("memberDAO")
public class MemberDAO extends EgovAbstractDAO{

	public List<?> selectSleepMemberList() {
		// TODO Auto-generated method stub
		return list("memberDAO.selectSleepMemberList");
	}
	
}
