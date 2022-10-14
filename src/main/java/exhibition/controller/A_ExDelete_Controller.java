package exhibition.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import exhibition.model.ExhibitionDao;

@Controller
public class A_ExDelete_Controller {
	final String command = "exdelete.ex";
	String getPage = "redirect:exlist.ex";
	
	@Autowired
	ExhibitionDao edao;
	
	@RequestMapping(command)
	public String delete(int no) {
		edao.deleteByNo(no);
		return getPage;
	}
}
