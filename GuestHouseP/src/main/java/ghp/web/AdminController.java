package ghp.web;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.rte.psl.dataaccess.util.EgovMap;
import ghp.service.EventService;
import ghp.service.FaqService;
import ghp.service.GhpVO;
import ghp.service.MemberService;
import ghp.service.MemberVO;
import ghp.service.NoticeService;
import ghp.service.QnaService;
import ghp.service.ReserveService;
import ghp.service.RoomService;
import ghp.service.RoomVO;

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
	@RequestMapping(value="/UserSleepList.do")
	public String selectSleepUserList( Model model ) throws Exception {
		List<?> vo = memberService.selectSleepMemberList();
		System.out.println("vo : "+vo);
	
		model.addAttribute("result",vo);
		
		return "admin/userSleepList";
	}
	
	//예약관리
	@RequestMapping(value="/ReserveList.do")
	public String selectReserveList( Model model ) throws Exception {
		List<?> vo = reserveService.selectReserveList();
		System.out.println("vo : "+vo);
		model.addAttribute("result",vo);
		
		return "admin/reserveList";
	}
	
	//숙소관리
	@RequestMapping(value="/RoomList.do")
	public String selectRoomList(RoomVO vo, Model model ) throws Exception {
		List<EgovMap> result = new ArrayList();
		EgovMap room_result = new EgovMap(); 
		List<?> rm_name = roomService.selectRoomNameList();
		System.out.println("rm_name : "+ rm_name);
		for(int i=0;i<rm_name.size();i++) {
			room_result = new EgovMap(); 
			EgovMap map_rm_name = (EgovMap)rm_name.get(i);
			String str_rm_name = (String)map_rm_name.get("rmName");
			
			vo.setRm_name(str_rm_name);
			List<?> rm_room = roomService.selectRoomList(vo);
			List<?> rm_price = roomService.selectRoomPriceList(vo); //{minPrice=50000, maxPrice=80000}
			List<?> rm_etc = roomService.selectRoomEtcList(vo);
			
			room_result.put("rm_name",map_rm_name.get("rmName"));
			room_result.put("rm_room",rm_room);
			
			for(int j=0;j<rm_price.size();j++) {
				EgovMap map_rm_price = (EgovMap)rm_price.get(j);
				room_result.put("max_price",map_rm_price.get("maxPrice"));
				room_result.put("min_price",map_rm_price.get("minPrice"));
			}
			
			for(int j=0;j<rm_etc.size();j++) {
				EgovMap map_rm_etc = (EgovMap)rm_etc.get(j);
				room_result.put("rm_img",map_rm_etc.get("rmImg"));
				room_result.put("rm_loc",map_rm_etc.get("rmLoc"));
				room_result.put("rm_phone",map_rm_etc.get("rmPhone"));
			}
			result.add(room_result);
		}
		System.out.println("room_result : "+room_result);
		System.out.println("result : "+result);
		/*
		 * [{rmName=테스트01, 
		 * rmRoom=[{rmRoom=101호}, {rmRoom=102호}, {rmRoom=103호}, {rmRoom=201호}, {rmRoom=202호}], 
		 * maxPrice=22000, 
		 * minPrice=10000, 
		 * rmImg=/src/img/room/roomtest_image_01.jpg, 
		 * rmLoc=서울, 
		 * rmPhone=021112222}]
		 * */
		model.addAttribute("result",result);
	
		return "admin/roomList";
	}
	
	//공지사항
	@RequestMapping(value="/NoticeList.do")
	public String selectNoticeList( Model model ) throws Exception {
		List<?> vo = noticeService.selectNoticeList();
		System.out.println("vo : "+vo);
		model.addAttribute("result",vo);
	
		return "admin/noticeList";
	}
	
	//자주묻는질문(FAQ)
	@RequestMapping(value="/FAQList.do")
	public String selectFAQList( Model model ) throws Exception {
		List<?> vo = faqService.selectFaqList();
		System.out.println("vo : "+vo);
		model.addAttribute("result",vo);
	
		return "admin/FAQList";
	}
	
	//문의하기
	@RequestMapping(value="/QnAList.do")
	public String selectQnAList( Model model ) throws Exception {
		List<?> vo = qnaService.selectQnaList();
		System.out.println("vo : "+vo);
		model.addAttribute("result",vo);
	
		return "admin/QnAList";
	}
	//이벤트
	@RequestMapping(value="/EventList.do")
	public String selectEventList( Model model ) throws Exception {
		List<?> vo = eventService.selectEventList();
		System.out.println("vo : "+vo);
		model.addAttribute("result",vo);
	
		return "admin/eventList";
	}	
	
	
	
	
	
	
	
}
