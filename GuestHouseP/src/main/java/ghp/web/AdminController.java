package ghp.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import ghp.service.GhpVO;
import ghp.service.MemberService;
import ghp.service.MemberVO;

@Controller
public class AdminController {

	@Resource(name="memberService")
	private MemberService memberService;
	
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
	public String selectReserveList( GhpVO vo, Model model ) throws Exception {

	
		return "admin/reserveList";
	}
	
	//숙소관리
	@RequestMapping(value="RoomList.do")
	public String selectRoomList( GhpVO vo, Model model ) throws Exception {

	
		return "admin/roomList";
	}
	
	//공지사항
	@RequestMapping(value="NoticeList.do")
	public String selectNoticeList( GhpVO vo, Model model ) throws Exception {

	
		return "admin/noticeList";
	}
	
	//자주묻는질문(FAQ)
	@RequestMapping(value="FAQList.do")
	public String selectFAQList( GhpVO vo, Model model ) throws Exception {

	
		return "admin/FAQList";
	}
	
	//문의하기
	@RequestMapping(value="QnAList.do")
	public String selectQnAList( GhpVO vo, Model model ) throws Exception {

	
		return "admin/QnAList";
	}
	//이벤트
	@RequestMapping(value="EventList.do")
	public String selectEventList( GhpVO vo, Model model ) throws Exception {

	
		return "admin/eventList";
	}	
	
	
	
	
	
	
	
}
