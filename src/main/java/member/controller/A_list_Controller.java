package member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import member.model.MemberBean;
import member.model.MemberDao;

@Controller
public class A_list_Controller {
	final String command = "list.mem";
	String getPage="/admin/list";
	
	@Autowired
	MemberDao mdao;
	
	@RequestMapping(command)
	public String list(Model model) {
		List<MemberBean>lists = mdao.getAllMember();
		model.addAttribute("lists",lists);
		return getPage;
	}
	
}