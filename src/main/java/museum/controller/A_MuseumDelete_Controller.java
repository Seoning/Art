package museum.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import museum.model.MuseumDao;

@Controller
public class A_MuseumDelete_Controller {
	final String command = "delete.mu";
	String getPage = "redirect:list.mu";
	
	@Autowired
	MuseumDao mdao;
	
	
	
	@RequestMapping(command)
	public String delete(int no) {
		
		mdao.deleteByNo(no);
		
		return getPage;
	}
	
}
