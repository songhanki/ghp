package ghp.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.example.sample.service.impl.EgovSampleServiceImpl;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import ghp.service.FaqService;
import ghp.service.RoomService;

@Service("faqService")
public class FaqServiceImpl extends EgovAbstractServiceImpl implements FaqService{
	private static final Logger LOGGER = LoggerFactory.getLogger(EgovSampleServiceImpl.class);
	
	
	@Resource(name = "faqDAO")
	private FaqDAO faqDAO;
	
	@Override
	public List<?> selectFaqList() throws Exception {
		return faqDAO.selectFaqList();
	}
}
