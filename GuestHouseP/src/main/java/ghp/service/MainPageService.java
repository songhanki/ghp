package ghp.service;

import java.util.List;

public interface MainPageService {

	List<?> selectInfoList(TravelInfoListVO vo1) throws Exception;

	List<?> selectReviewList(TravelReviewListVO vo2) throws Exception;
	
}
