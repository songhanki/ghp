package adm.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import adm.service.GhpService;
import adm.service.GhpVO;

@Controller
public class GhpController {
	
	@Resource(name = "ghpService")
	private GhpService ghpService;
	
	@RequestMapping(value="ghpList.do")
	public String selectEmpList( GhpVO vo, Model model ) throws Exception {

	
		return "ghp/ghpList";
	}
}
