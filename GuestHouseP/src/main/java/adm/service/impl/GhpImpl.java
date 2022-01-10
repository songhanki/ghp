package adm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import adm.service.GhpService;
import adm.service.GhpVO;

@Service("ghpService")
public class GhpImpl implements GhpService {
	@Resource(name = "ghpDAO")
	private GhpDAO ghpDAO;
	
	@Override
	public List<?> selectEmpList(GhpVO vo) throws Exception {
		return ghpDAO.selectEmpList(vo);
	}
}
