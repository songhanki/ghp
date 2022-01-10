package adm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.example.sample.service.impl.EgovSampleServiceImpl;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import adm.service.ReserveService;
import adm.service.RoomAdmService;

@Service("reserveService")
public class ReserveServiceImpl extends EgovAbstractServiceImpl implements ReserveService{
	private static final Logger LOGGER = LoggerFactory.getLogger(EgovSampleServiceImpl.class);
	
	
	@Resource(name = "reserveDAO")
	private ReserveDAO reserveDAO;
	
	@Override
	public List<?> selectReserveList() throws Exception {
		return reserveDAO.selectReserveList();
	}
}
