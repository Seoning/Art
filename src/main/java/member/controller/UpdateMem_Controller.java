package member.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import member.model.MemberBean;
import member.model.MemberDao;

@Controller
public class UpdateMem_Controller {
	final String command = "update.mem";
	String getPage="/admin/update";
	String goToPage="redirect:list.mem";
	
	@Autowired
	MemberDao memdao;
	
	@RequestMapping(value=command,method = RequestMethod.GET)
	public String update(int no, Model model) {
		
		MemberBean memb = memdao.getByNo(no);
		model.addAttribute("memb",memb);
		return getPage;
	}
	
	@RequestMapping(value=command,method = RequestMethod.POST)
	public String update(MemberBean memb,
			@RequestParam String address,
			@RequestParam String sample6_address,
			@RequestParam String sample6_detailAddress,
			@RequestParam String sample6_extraAddress
			) {
		
		System.out.println(memb.getName()+"/"+memb.getNo()+"/"+memb.getSignup_day());
		
		
		String totalAddress = address+" "+sample6_address+" "+sample6_detailAddress+" "+sample6_extraAddress;
		memb.setAddress(totalAddress);
		
		memdao.updateMember(memb);
		
		return goToPage;
	}
	
}
