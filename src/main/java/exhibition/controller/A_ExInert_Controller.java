package exhibition.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class A_ExInert_Controller {
	final String command = "exinsert.ex";
	String getPage = "/admin/ex_Insert";
	
	@RequestMapping(command)
	public String insert() {
		
		return getPage;
	}
}
