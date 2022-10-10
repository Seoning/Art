package museum.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import museum.model.MuseumBean;
import museum.model.MuseumDao;

@Controller
@ComponentScan("museum.*")
public class A_MuseumDetail_Controller {
	final String command = "detail.mu";
	String getPage = "/admin/museum_Detail";
	
	@Autowired
	MuseumDao mdao;
	
	@RequestMapping(command)
	public String detail(int no, Model model) {
		System.out.println("no:"+no);
		
		MuseumBean mb = mdao.getByNo(no);
		model.addAttribute("mb",mb);
		return getPage;
	}
}
