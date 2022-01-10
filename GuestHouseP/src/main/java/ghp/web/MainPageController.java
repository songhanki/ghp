package ghp.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ghp.service.MainPageService;
import ghp.service.TravelInfoListVO;
import ghp.service.TravelReviewListVO;
import egovframework.example.sample.service.EgovSampleService;

@Controller
public class MainPageController {
	
	@Resource(name="mainpageService")
	private MainPageService mainpageService;
	
	@Resource(name = "sampleService")
	private EgovSampleService sampleService;
	
	@RequestMapping(value = "homepage.do")
	public String MainPageView(TravelInfoListVO vo1, TravelReviewListVO vo2, Model model) throws Exception {
		
		List<?> info = mainpageService.selectInfoList(vo1);
		List<?> review = mainpageService.selectReviewList(vo2);
		model.addAttribute("info", info);
		model.addAttribute("review", review);
		
		return "mainpage/homepage";
	}

}
