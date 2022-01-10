package adm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.example.sample.service.impl.EgovSampleServiceImpl;
import egovframework.example.sample.service.impl.SampleDAO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import adm.service.MemberAdmService;
import adm.service.MemberAdmVO;

@Service("memberAdmService")
public class MemberAdmServiceImpl extends EgovAbstractServiceImpl implements MemberAdmService{
	private static final Logger LOGGER = LoggerFactory.getLogger(EgovSampleServiceImpl.class);
	
	@Resource(name = "memberAdmDAO")
	private MemberAdmDAO memberAdmDAO;
	
	@Override 
	public List<?> selectSleepMemberList() throws Exception {
		return memberAdmDAO.selectSleepMemberList();
	}
}
