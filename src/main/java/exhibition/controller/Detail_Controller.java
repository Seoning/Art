package exhibition.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import exhibition.model.ExhibitionBean;
import exhibition.model.ExhibitionDao;

@Controller
public class Detail_Controller {
	final String command = "udetail.ex";
	String getPage = "/detail";
	
	@Autowired
	ExhibitionDao edao;
	
	@RequestMapping(command)
	public String detail(int no, Model model) {
		
		ExhibitionBean eb = edao.getByNo(no);
		model.addAttribute("eb",eb);
		return getPage;
	}
	
}
