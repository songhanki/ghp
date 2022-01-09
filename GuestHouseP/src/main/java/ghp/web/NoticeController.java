package ghp.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import ghp.service.NoticeService;
import ghp.service.NoticeVO;

@Controller
@RequestMapping(value="/notice/")
public class NoticeController {
	@Resource(name="noticeService")
	private NoticeService noticeService;
	
	@RequestMapping(value="CreateNotice.do")
	public String createNotice( Model model ) throws Exception {
		//List<?> vo = roomService.selectRoomNameList();
		//System.out.println("vo : "+vo);
		//model.addAttribute("result",vo);
	
		return "admin/notice/noticeCreate";
	}
	
	@RequestMapping(value="DetailNotice.do")
	public String detailNotice(NoticeVO vo, Model model ) throws Exception {
		vo = noticeService.selectNoticeDetailList(vo);
		
		System.out.println("vo : "+vo);
		model.addAttribute("vo",vo);
	
		return "admin/notice/noticeDetail";
	}
	
	@RequestMapping(value="InsertNotice.do")
	@ResponseBody
	public String insertNotice(NoticeVO vo ) throws Exception {
		String msg = "ok";
		vo.setNc_writer("관리자"); // 작성자는 관리자로 통일(추후 관리자 ID 연동 하면 해당 부분 추가
		String result = noticeService.insertNoticeList(vo);

		if( result != null ) msg = "save_fail"; 
		System.out.println("notice_msg : "+msg);
		return msg;
	}
	
	@RequestMapping(value="UpdatePageNotice.do")
	public String updatePageNotice(int nc_seq,NoticeVO vo, Model model ) throws Exception {
		vo.setNc_seq(nc_seq);
		vo = noticeService.selectNoticeDetailList(vo);
		
		System.out.println("vo : "+vo);
		model.addAttribute("vo",vo);
	
		return "admin/notice/noticeUpdate";
	}
	
	@RequestMapping(value="UpdateNotice.do")
	@ResponseBody
	public String updateNotice(NoticeVO vo, Model model ) throws Exception {
		String msg = "ok";
		int result = noticeService.updateNoticeList(vo);
		
		if( result == 0 ) msg = "save_fail"; 
		return msg;
	}
	
	@RequestMapping(value="DeleteNotice.do")
	@ResponseBody
	public String deleteNotice(int nc_seq, NoticeVO vo, Model model ) throws Exception {
		//String msg = "ok";
		vo.setNc_seq(nc_seq);
		
		int result = noticeService.deleteNoticeList(vo);
		System.out.println("notice result: "+result);
		return result+"";
	}
}
