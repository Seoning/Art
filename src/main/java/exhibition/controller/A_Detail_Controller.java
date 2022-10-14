package exhibition.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import exhibition.model.ExhibitionBean;
import exhibition.model.ExhibitionDao;

@Controller
public class A_Detail_Controller {
	final String command = "detail.ex";
	String getPage = "/admin/ex_Detail";
	
	@Autowired
	ExhibitionDao edao;
	
	@RequestMapping(command)
	public String detail(int no, Model model) {
		System.out.println("no:"+no);
		
		ExhibitionBean eb = edao.getByNo(no);
		model.addAttribute("eb",eb);
		return getPage;
	}
	
}
