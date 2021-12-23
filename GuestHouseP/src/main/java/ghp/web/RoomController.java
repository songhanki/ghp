package ghp.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ghp.service.RoomService;
import ghp.service.RoomVO;

@Controller
@RequestMapping(value="room/")
public class RoomController {
	
	@Resource(name="roomService")
	private RoomService roomService;
	
	@RequestMapping(value="CreateRoom.do")
	public String createRoom( Model model ) throws Exception {
		List<?> vo = roomService.selectRoomNameList();
		System.out.println("vo : "+vo);
		model.addAttribute("result",vo);
	
		return "admin/roomList";
	}
	
	@RequestMapping(value="DetailRoom.do")
	public String detailRoom(RoomVO vo, Model model ) throws Exception {
	
		vo.setRm_name("테스트01"); //임시 테스트용데이터(나중에 tr클릭시 data로 받을 예정)
		
		List<?> rm_rpp = roomService.selectRoomRPPList(vo); // 숙소에 대한 호실,인원수,가격 정보조회
		List<?> result = roomService.selectRoomDetailList(vo);
		System.out.println("rm_rpp : "+rm_rpp);		
		System.out.println("result : "+result); 
		/* rm_rpp
		 * [{rmRoom=101호, rmPerson=4, rmPrice=10000}, 
		 * {rmRoom=102호, rmPerson=3, rmPrice=15000}, 
		 * {rmRoom=103호, rmPerson=1, rmPrice=20000}]
		 * result
		 * {rmName=테스트01, rmImg=/src/img/room/roomtest_image_01.jpg, rmLoc=서울, rmPhone=021112222, rmComment=테스트용 숙소 101호입니다.}
		*/
		model.addAttribute("rm_rpp",rm_rpp);
		model.addAttribute("result",result);

		return "admin/room/roomDetail";
	}
	
	@RequestMapping(value="UpdateRoom.do")
	public String updateRoom( Model model ) throws Exception {
		List<?> vo = roomService.selectRoomNameList();
		System.out.println("vo : "+vo);
		model.addAttribute("result",vo);
	
		return "admin/roomList";
	}
	@RequestMapping(value="DeleteRoom.do")
	public String deleteRoom( Model model ) throws Exception {
		List<?> vo = roomService.selectRoomNameList();
		System.out.println("vo : "+vo);
		model.addAttribute("result",vo);
	
		return "admin/roomList";
	}
}
