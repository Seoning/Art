package museum.controller;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@ComponentScan("museum.*")
public class A_MuseumDetail_Controller {
	final String command = "detail.mu";
	String getPage = "/admin/museum_Detail";
	
	@RequestMapping(command)
	public String detail(int no) {
		System.out.println("no:"+no);
		return getPage;
	}
}
