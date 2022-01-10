package ghp.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import ghp.service.MainPageService;
import ghp.service.NoticeListVO;
import ghp.service.TravelInfoListVO;
import ghp.service.TravelReviewListVO;

@Service("mainpageService")
public class MainPageImpl implements MainPageService {

	@Resource(name = "mainpageDAO")
	private MainPageDAO mainpageDAO;

	@Override
	public List<?> selectInfoList(TravelInfoListVO vo1) throws Exception {
		return mainpageDAO.selectInfoList(vo1);
	}

	@Override
	public List<?> selectReviewList(TravelReviewListVO vo2) throws Exception {
		return mainpageDAO.selectReviewList(vo2);
	}
	
	
	
}
