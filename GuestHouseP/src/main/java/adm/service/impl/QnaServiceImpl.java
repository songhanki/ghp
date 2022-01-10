package adm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.example.sample.service.impl.EgovSampleServiceImpl;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import adm.service.QnaService;
import adm.service.RoomAdmService;

@Service("qnaService")
public class QnaServiceImpl extends EgovAbstractServiceImpl implements QnaService{
	private static final Logger LOGGER = LoggerFactory.getLogger(EgovSampleServiceImpl.class);
	
	
	@Resource(name = "qnaDAO")
	private QnaDAO qnaDAO;
	
	@Override
	public List<?> selectQnaList() throws Exception {
		return qnaDAO.selectQnaList();
	}
}
