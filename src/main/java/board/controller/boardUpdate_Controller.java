package board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import board.model.BoardBean;
import board.model.BoardDao;

@Controller
public class boardUpdate_Controller {
	final String command = "update.bd";
	String getPage = "/update";
	
	@Autowired
	BoardDao bdao;
	
	@RequestMapping(value=command,method = RequestMethod.GET)
	public String update(int no, Model model) {
		
		BoardBean bb = bdao.getByNo(no);
		model.addAttribute("bb",bb);
		return getPage;
	}
	
	@RequestMapping(value=command,method = RequestMethod.POST)
	public String update(String title, int no, String message, Model model) {
		System.out.println("title:"+title);
		System.out.println("message:"+message);
		BoardBean bb = new BoardBean();
		bb.setTitle(title);
		bb.setNo(no);
		bb.setMessage(message);
		bdao.updateByNo(bb);
		
		return "redirect:list.bd";
	}
}
