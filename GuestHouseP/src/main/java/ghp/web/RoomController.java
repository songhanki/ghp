package ghp.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ghp.service.RoomService;

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
	public String detailRoom( Model model ) throws Exception {
		List<?> vo = roomService.selectRoomNameList();
		System.out.println("vo : "+vo);
		model.addAttribute("result",vo);
	
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
