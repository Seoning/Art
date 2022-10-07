package museum.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	final String command = "home.mu";
	String getPage = "/home";
	
	@RequestMapping(command)
	public String home() {
		
		return getPage;
	}
}
