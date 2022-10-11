package museum.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import museum.model.MuseumBean;
import museum.model.MuseumDao;

@Controller
public class HomeController {
	final String command = "home.mu";
	String getPage = "/home";
	
	@Autowired
	MuseumDao mdao;
	
	@RequestMapping(command)
	public String home(Model model) {
		
		List<MuseumBean>lists =  mdao.getMuseumList();
		model.addAttribute("lists",lists);
		return getPage;
	}
}
