package ghp.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.example.sample.service.impl.EgovSampleServiceImpl;
import egovframework.example.sample.service.impl.SampleDAO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import ghp.service.MemberService;
import ghp.service.MemberVO;

@Service("memberService")
public class MemberServiceImpl extends EgovAbstractServiceImpl implements MemberService{
	private static final Logger LOGGER = LoggerFactory.getLogger(EgovSampleServiceImpl.class);
	
	@Resource(name = "memberDAO")
	private MemberDAO memberDAO;
	
	@Override 
	public List<?> selectSleepMemberList() throws Exception {
		return memberDAO.selectSleepMemberList();
	}
}
