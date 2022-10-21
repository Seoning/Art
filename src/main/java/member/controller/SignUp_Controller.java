package member.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import member.model.MemberBean;
import member.model.MemberDao;

@Controller
public class SignUp_Controller {
	final String command="signUp.mem";
	final String command2="idDuple.mem";
	String getPage="/sign_Up";
	String goToPage="redirect:home.mu";
	
	@Autowired
	MemberDao memdao;
	
	@RequestMapping(value=command, method = RequestMethod.GET)
	public String signup() {
		
		return getPage;
	}
	
	@RequestMapping(command2)
	@ResponseBody
	public String idDuple(String id) {
		System.out.println("dh");
		String check = "Y";
		MemberBean membean = memdao.getById(id);
		if(membean != null) {
			check = "N";
		}
		System.out.println("check:"+check);
		return check;
	}
	
	@RequestMapping(value=command, method = RequestMethod.POST)
	public String signup(@Valid MemberBean mb, BindingResult result, 
			@RequestParam String address,
			@RequestParam String sample6_address,
			@RequestParam String sample6_detailAddress,
			@RequestParam String sample6_extraAddress,
			Model model) {
		
		System.out.println("name:"+mb.getName());
		System.out.println("phone:"+mb.getPhone());
		
		
		if(result.hasErrors()) {
			
			return getPage;
		}
		
		String totalAddress = address+" "+sample6_address+" "+sample6_detailAddress+" "+sample6_extraAddress;
		
		mb.setAddress(totalAddress);
		
		memdao.insertMember(mb);
		
		return goToPage;
	}
	
}
