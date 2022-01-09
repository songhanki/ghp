package ghp.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.json.JsonObject;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import ghp.service.RoomService;
import ghp.service.RoomVO;

@Controller
@RequestMapping(value="/room/")
public class RoomController {
	
	@Resource(name="roomService")
	private RoomService roomService;
	
	@RequestMapping(value="CreateRoom.do")
	public String createRoom( Model model ) throws Exception {
		List<?> vo = roomService.selectRoomNameList();
		System.out.println("vo : "+vo);
		model.addAttribute("result",vo);
	
		return "admin/room/roomCreate";
	}
	
	@RequestMapping("InsertRoom.do")
	@ResponseBody
	public String insertRoom(String rm_rpp, String rm_array ,RoomVO vo) throws Exception {
		rm_rpp = rm_rpp.replaceAll("&quot;", "\"");
		rm_array = rm_array.replaceAll("&quot;", "\"");
		//System.out.println("rm_rpp"+rm_rpp); 
		//{"rm_room":"101","rm_person":"1","rm_price":"10000"},{"rm_room":"102","rm_person":"4","rm_price":"15000"}
		//System.out.println("rm_array"+rm_array); 
		//{"rm_name":"테스트","rm_loc":"서울","rm_comment":"테스트"}
		String msg = "ok";

	
		JSONParser pars_rpp = new JSONParser();
		JSONParser pars_array = new JSONParser();
		Object obj_rpp = pars_rpp.parse(rm_rpp);
		Object obj_array = pars_array.parse(rm_array);  
		JSONArray json_arr_rpp = (JSONArray)obj_rpp;
		JSONArray json_arr_array = (JSONArray)obj_array;
		for(int i=0;i<json_arr_array.size();i++) {
			for(int j=0;j<json_arr_rpp.size();j++){
				JSONObject json_obj_rpp = (JSONObject)json_arr_rpp.get(j);
				JSONObject json_obj_array = (JSONObject)json_arr_array.get(i);
				
				String rm_name = (String) json_obj_array.get("rm_name");
				String rm_loc = (String) json_obj_array.get("rm_loc");
				String rm_comment = (String) json_obj_array.get("rm_comment");
				//String rm_img = (String) json_obj_array.get("rm_img");
				String rm_img = "/src/img/test.jpg";
				String rm_phone = (String) json_obj_array.get("rm_phone");

				String rm_room = (String) json_obj_rpp.get("rm_room");
				String rm_person = (String) json_obj_rpp.get("rm_person");
				String rm_price = (String) json_obj_rpp.get("rm_price");
				

				System.out.println("rm_name : "+rm_name);
				System.out.println("rm_loc : "+rm_loc);
				System.out.println("rm_comment : "+rm_comment);
				System.out.println("rm_room : "+rm_room);
				System.out.println("rm_person : "+rm_person);
				System.out.println("rm_price : "+rm_price);
				System.out.println("rm_phone : "+rm_phone);
				System.out.println("***********************");

				vo.setRm_name(rm_name);
				vo.setRm_loc(rm_loc);
				vo.setRm_commnet(rm_comment);
				vo.setRm_room(rm_room);
				vo.setRm_person(rm_person);
				vo.setRm_price(rm_price);
				vo.setRm_img(rm_img);
				vo.setRm_phone(rm_phone);
				
				String result = roomService.insertRoomList(vo); // 추후에 Map사용후 다중 insert 구현
				if( result != null ) msg = "save_fail";
				
				
			}
		}
	
		//return "admin/room/roomCreate";
		return msg;
	}
	
	@RequestMapping(value="DetailRoom.do")
	public String detailRoom(String rm_name, RoomVO vo, Model model ) throws Exception {
		System.out.println("rm_name : "+rm_name);		
		vo.setRm_name(rm_name); 
		
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
	public String updateRoom(String rm_name, RoomVO vo, Model model ) throws Exception {
		System.out.println("rm_name : "+rm_name);		
		vo.setRm_name(rm_name); 
		
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

		return "admin/room/roomUpdate";
	
	}
	@RequestMapping(value="DeleteRoom.do")
	@ResponseBody
	public String deleteRoom(String rm_name, RoomVO vo, Model model ) throws Exception {
		String msg = "ok";
		vo.setRm_name(rm_name);
		int result = roomService.deleteRoomNameList(vo);

		
		System.out.println("del_result : "+result);
	
		return result+"";
	}
}
