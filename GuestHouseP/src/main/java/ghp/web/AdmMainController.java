package ghp.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ghp.service.GhpVO;

@Controller
public class AdmMainController {

	@RequestMapping(value="admMain.do")
	public String admindo() {

	
		return "admin/adminMain";
	}
	
/*페이지 이동 컨트롤러*/
	
	//휴면계정 관리
	@RequestMapping(value="UserSleepList.do")
	public String selectSleepUserList( GhpVO vo, Model model ) throws Exception {

	
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
