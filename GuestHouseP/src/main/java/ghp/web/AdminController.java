package ghp.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import ghp.service.EventService;
import ghp.service.FaqService;
import ghp.service.GhpVO;
import ghp.service.MemberService;
import ghp.service.MemberVO;
import ghp.service.NoticeService;
import ghp.service.QnaService;
import ghp.service.ReserveService;
import ghp.service.RoomService;

@Controller
public class AdminController {

	@Resource(name="memberService")
	private MemberService memberService;
	
	@Resource(name="roomService")
	private RoomService roomService;
	
	@Resource(name="noticeService")
	private NoticeService noticeService;
	
	@Resource(name="faqService")
	private FaqService faqService;
	
	@Resource(name="qnaService")
	private QnaService qnaService;
	
	@Resource(name="eventService")
	private EventService eventService;
	
	@Resource(name="reserveService")
	private ReserveService reserveService;
	
	/*페이지 이동 컨트롤러*/
	
	//휴면계정 관리
	@RequestMapping(value="UserSleepList.do")
	public String selectSleepUserList( Model model ) throws Exception {
		List<?> vo = memberService.selectSleepMemberList();
		System.out.println("vo : "+vo);
	
		model.addAttribute("result",vo);
		
		return "admin/userSleepList";
	}
	
	//예약관리
	@RequestMapping(value="ReserveList.do")
	public String selectReserveList( Model model ) throws Exception {
		List<?> vo = reserveService.selectReserveList();
		System.out.println("vo : "+vo);
		model.addAttribute("result",vo);
		
		return "admin/reserveList";
	}
	
	//숙소관리
	@RequestMapping(value="RoomList.do")
	public String selectRoomList( Model model ) throws Exception {
		List<?> vo = roomService.selectRoomList();
		System.out.println("vo : "+vo);
		model.addAttribute("result",vo);
	
		return "admin/roomList";
	}
	
	//공지사항
	@RequestMapping(value="NoticeList.do")
	public String selectNoticeList( Model model ) throws Exception {
		List<?> vo = noticeService.selectNoticeList();
		System.out.println("vo : "+vo);
		model.addAttribute("result",vo);
	
		return "admin/noticeList";
	}
	
	//자주묻는질문(FAQ)
	@RequestMapping(value="FAQList.do")
	public String selectFAQList( Model model ) throws Exception {
		List<?> vo = faqService.selectFaqList();
		System.out.println("vo : "+vo);
		model.addAttribute("result",vo);
	
		return "admin/FAQList";
	}
	
	//문의하기
	@RequestMapping(value="QnAList.do")
	public String selectQnAList( Model model ) throws Exception {
		List<?> vo = qnaService.selectQnaList();
		System.out.println("vo : "+vo);
		model.addAttribute("result",vo);
	
		return "admin/QnAList";
	}
	//이벤트
	@RequestMapping(value="EventList.do")
	public String selectEventList( Model model ) throws Exception {
		List<?> vo = eventService.selectEventList();
		System.out.println("vo : "+vo);
		model.addAttribute("result",vo);
	
		return "admin/eventList";
	}	
	
	
	
	
	
	
	
}
