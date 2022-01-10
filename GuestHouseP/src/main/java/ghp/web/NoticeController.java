package ghp.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ghp.service.NoticeListVO;
import ghp.service.NoticeService;

@Controller
public class NoticeController {

	@Resource(name = "noticeService")
	private NoticeService noticeService;
	
	@RequestMapping(value = "noticeList.do")
	public String NoticeList(NoticeListVO vo, Model model) throws Exception {
		
		int page_no = vo.getPage_no();
		int s_no = (page_no-1) * 10 +1 ;
		int e_no = s_no + 9;
		
		vo.setS_no(s_no);
		vo.setE_no(e_no);
		
		List<?> list = noticeService.selectNoticeList(vo);
		int total = noticeService.selectNoticeTotal();
		
		int total_page = (int)Math.ceil((double)total/10);
		int rownum = total - ((page_no-1) * 10);
		
		model.addAttribute("list", list);
		model.addAttribute("rownum", rownum);
		model.addAttribute("total_page", total_page);
		
		return "notice/noticeList";
	}
	
	@RequestMapping(value = "noticeDetail.do")
	public String NoticeDetail(int ncseq, Model model) throws Exception {
		System.out.println("noticeDetail_nc_seq : "+ncseq);
		NoticeListVO vo = noticeService.selectNoticeDetail(ncseq);
		
		model.addAttribute("vo", vo);
		
		return "notice/noticeDetail";
	}
}
