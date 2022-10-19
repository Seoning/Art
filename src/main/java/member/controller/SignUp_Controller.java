package member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SignUp_Controller {
	final String command="signUp.mem";
	String getPage="/sign_Up";
	
	@RequestMapping(command)
	public String signup() {
		
		return getPage;
	}
	
	
}
