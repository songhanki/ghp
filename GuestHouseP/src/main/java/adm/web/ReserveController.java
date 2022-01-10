package adm.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import adm.service.FaqVO;
import adm.service.ReserveService;

@Controller
@RequestMapping(value="/adm/reserve/")
public class ReserveController {
	@Resource(name="reserveService")
	private ReserveService reserveService;
	
	@RequestMapping(value="DetailReserve.do")
	public String detailFAQ(FaqVO vo, Model model ) throws Exception {
		System.out.println("faq_seq : "+vo.getFaq_seq());
		/*vo = reserveService.selectReserveDetailList(vo);
		
		System.out.println("vo : "+vo);
		model.addAttribute("vo",vo);
	*/
		return "admin/reserve/reserveDetail";
	}
	
	
}
