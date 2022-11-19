package museum.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import exhibition.model.ExhibitionBean;
import exhibition.model.ExhibitionDao;
import museum.model.MuseumBean;
import museum.model.MuseumDao;

@Controller
public class HomeController {
	final String command = "home.mu";
	String getPage = "/home";
	
	@Autowired
	MuseumDao mdao;
	
	@Autowired
	ExhibitionDao edao;
	
	@RequestMapping(command)
	public String home(@RequestParam(required=false)String email,Model model) {
		
		List<MuseumBean>lists =  mdao.getMuseumList();
		model.addAttribute("lists",lists);
		
		List<ExhibitionBean> elists = edao.getExByEndday();
		model.addAttribute("elists",elists);
		
		System.out.println("email:"+email);
		
		return getPage;
		
	}
}
