package ghp.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ghp.service.ReserveListVO;
import ghp.service.RoomListVO;
import ghp.service.RoomService;
import egovframework.example.sample.service.EgovSampleService;

@Controller
public class RoomController {

	@Resource(name = "sampleService")
	private EgovSampleService sampleService;
	
	@Resource(name = "roomService")
	private RoomService roomService;
	
	// 상단 메뉴에서 검색을 눌렀을 경우 이동하는 페이지
	@RequestMapping(value = "roomList.do")
	public String RoomList(RoomListVO vo, Model model) throws Exception {
		
		List<?> list = roomService.selectRoomList(vo);
		int total = roomService.selectRoomTotal(vo);
		
		int page_no = vo.getPage_no();
		int s_no = (page_no-1)*10 +1;
		int e_no = s_no + (10-1);
		
		vo.setS_no(s_no);
		vo.setE_no(e_no);
		int total_page = (int)Math.ceil((double)total/10);
		int rownum = total - (page_no-1)*10;
		System.out.println("room_list : "+list);
		model.addAttribute("list", list);
		model.addAttribute("total", total);
		model.addAttribute("total_page", total_page);
		model.addAttribute("rownum", rownum);
		
		return "room/roomlist";
	}
	
	@RequestMapping(value = "roomSearchList.do")
	public String RoomSearchselectList(RoomListVO vo, Model model) throws Exception {
		
		List<?> list = roomService.selectSearchRoomList(vo);
		int total = roomService.selectRoomTotal(vo);
		
		int page_no = vo.getPage_no();
		int s_no = (page_no-1)*10 +1;
		int e_no = s_no + (10-1);
		
		vo.setS_no(s_no);
		vo.setE_no(e_no);
		int total_page = (int)Math.ceil((double)total/10);
		int rownum = total - (page_no-1)*10;
		
		model.addAttribute("rmloc", vo.getRm_loc());
		model.addAttribute("rmperson", vo.getRm_person());
		model.addAttribute("list", list);
		model.addAttribute("total", total);
		model.addAttribute("total_page", total_page);
		model.addAttribute("rownum", rownum);
		
		return "room/roomlist";
	}
	
	@RequestMapping(value = "roomDetail.do")
	public String RoomDetail(RoomListVO vo, Model model) throws Exception {
		
		RoomListVO vo1 = roomService.selectRoomDetail(vo);
		
		return "room/roomDetail";
	}
	
	// 예약을 눌러을 때 이동하는 페이지 연결
	@RequestMapping(value = "roomReserve.do")
	public String RoomReserve(ReserveListVO vo, Model model) throws Exception {
			
		return "room/roomReserve";
	}
}
