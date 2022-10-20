package member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import member.model.MemberBean;
import member.model.MemberDao;

@Controller
public class Mypage_Controller {
	final String command = "mypage.mem";
	final String command2 = "signout.mem";
	final String command3 = "user_update.mem";
	
	String getPage = "/mypage";
	String getPage2 = "/user_update";
	String goToPage = "redirect:home.mu";
	
	@Autowired
	MemberDao mdao;
	
	@RequestMapping(command)
	public String mypage(int no, Model model) {
		
		MemberBean memb = mdao.getByNo(no);
		model.addAttribute("memb",memb);
		return getPage;
	}
	
	@RequestMapping(command2)
	public String signout(int no){
		
		mdao.deleteByNo(no);
		
		return goToPage;
	}
	
	@RequestMapping(value=command3, method = RequestMethod.GET)
	public String update(int no, Model model) {
		
		MemberBean memb = mdao.getByNo(no);
		model.addAttribute("memb",memb);
		return getPage2;
	}
	
	@RequestMapping(value=command3,method = RequestMethod.POST)
	public String update(MemberBean memb,
			@RequestParam String address,
			@RequestParam String sample6_address,
			@RequestParam String sample6_detailAddress,
			@RequestParam String sample6_extraAddress
			) {
		
		System.out.println(memb.getName()+"/"+memb.getNo()+"/"+memb.getSignup_day());
		
		
		String totalAddress = address+" "+sample6_address+" "+sample6_detailAddress+" "+sample6_extraAddress;
		memb.setAddress(totalAddress);
		
		mdao.updateMember(memb);
		
		return getPage;
	}
	
}
