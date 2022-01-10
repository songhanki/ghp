package ghp.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import ghp.service.FaqListVO;
import ghp.service.QnaVO;
import ghp.service.QuestionService;
import egovframework.example.sample.service.EgovSampleService;

@Controller
public class QuestionController {
	
	@Resource(name = "questionService")
	private QuestionService questionService;
	
	@Resource(name = "sampleService")
	private EgovSampleService sampleService;
	
	@RequestMapping(value = "questionList.do")
	public String QuestionList(FaqListVO vo, String item, Model model) throws Exception { 
				
		if(item == null) {
			vo.setFaq_category("A");
		}else if(item.equals("A")) {
			vo.setFaq_category("A");
		}else if(item.equals("B")) {
			vo.setFaq_category("B");
		}else if(item.equals("C")){
			vo.setFaq_category("C");
		}
		System.out.println("question_category : "+ vo.getFaq_category());
		List<?> list = questionService.selectQuestionList(vo);
		System.out.println("question_list : "+list);
		model.addAttribute("list", list);
		
		return "qna/questionList";
	}

	@RequestMapping(value = "question.do")
	public String QuestionWrite(QnaVO vo) throws Exception {
		
		return "qna/question";
	}
	
	@RequestMapping(value = "questionSave.do")
	@ResponseBody
	public String insertQuestion(QnaVO vo) throws Exception {
		System.out.println("QSave ; "+vo.getQna_category());
		System.out.println("QSave ; "+vo.getQna_seq());
		
		String result = questionService.insertQuestion(vo);
		String message = "";

		if( result == null ) {
			message = "ok";
		} else {
			message = "save_fail";
		}
		
		return message;
	}
	
}
