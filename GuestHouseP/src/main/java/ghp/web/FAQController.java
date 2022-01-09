package ghp.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import ghp.service.FaqService;
import ghp.service.FaqVO;
import ghp.service.NoticeVO;

@Controller
@RequestMapping(value="/FAQ/")
public class FAQController {

	@Resource(name="faqService")
	private FaqService faqService;
	
	@RequestMapping(value="CreateFAQ.do")
	public String createFAQ( Model model ) throws Exception {
		
		return "admin/FAQ/FaqCreate";
	}
	@RequestMapping(value="DetailFAQ.do")
	public String detailFAQ(FaqVO vo, Model model ) throws Exception {
		System.out.println("faq_seq : "+vo.getFaq_seq());
		vo = faqService.selectFAQDetailList(vo);
		
		System.out.println("vo : "+vo);
		model.addAttribute("vo",vo);
	
		return "admin/FAQ/FaqDetail";
	}
	
	@RequestMapping(value="InsertFAQ.do")
	@ResponseBody
	public String insertFAQ(FaqVO vo ) throws Exception {
		String msg = "ok";
		vo.setFaq_writer("관리자"); // 작성자는 관리자로 통일(추후 관리자 ID 연동 하면 해당 부분 추가
		System.out.println(vo.getFaq_title());
		System.out.println(vo.getFaq_comment());
		System.out.println(vo.getFaq_category());
		System.out.println(vo.getFaq_title());
		
		String result = faqService.insertFAQList(vo);

		if( result != null ) msg = "save_fail"; 
		System.out.println("notice_msg : "+msg);
		return msg;
	}
	
	@RequestMapping(value="UpdatePageFAQ.do")
	public String updatePageFAQ(int faq_seq, FaqVO vo, Model model ) throws Exception {
		vo.setFaq_seq(faq_seq);
		vo = faqService.selectFAQDetailList(vo);
		
		System.out.println("vo : "+vo);
		model.addAttribute("vo",vo);
	
		return "admin/FAQ/FaqUpdate";
	}
	
	@RequestMapping(value="UpdateFAQ.do")
	@ResponseBody
	public String updateFAQ(FaqVO vo, Model model ) throws Exception {
		String msg = "ok";
		int result = faqService.updateFAQList(vo);
		
		if( result == 0 ) msg = "save_fail"; 
		return msg;
	}
	
	@RequestMapping(value="DeleteFAQ.do")
	@ResponseBody
	public String deleteFAQ(int faq_seq, FaqVO vo, Model model ) throws Exception {
		//String msg = "ok";
		vo.setFaq_seq(faq_seq);
		
		int result = faqService.deleteFAQList(vo);
		System.out.println("faq result: "+result);
		return result+"";
	}
	
}
