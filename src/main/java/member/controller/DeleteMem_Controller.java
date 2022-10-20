package member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import member.model.MemberDao;

@Controller
public class DeleteMem_Controller {
	final String command = "delete.mem";
	String getPage = "redirect:list.mem";
	
	@Autowired
	MemberDao memdao;
	
	@RequestMapping(command)
	public String delete(int no) {
		memdao.deleteByNo(no);
		return getPage;
	}
}
