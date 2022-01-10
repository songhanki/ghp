package ghp.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import ghp.service.NoticeListVO;
import ghp.service.TravelInfoListVO;
import ghp.service.TravelReviewListVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("mainpageDAO")
public class MainPageDAO extends EgovAbstractDAO {

	public List<?> selectInfoList(TravelInfoListVO vo1) {
		return list("mainpageDAO.selectInfoList",vo1);
	}

	public List<?> selectReviewList(TravelReviewListVO vo2) {
		return list("mainpageDAO.selectReviewList",vo2);
	}

}
