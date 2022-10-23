package board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import board.model.BoardDao;
import board.model.ReplyBean;

@Controller
public class A_replyInsert_Controller {
	final String command = "replyInsert.rp";
	String goToPage = "redirect:detail.bd";
	
	@Autowired
	BoardDao bdao;
	
	@RequestMapping(command)
	public String reply(ReplyBean rb, Model model) { //no of BoardBean no (primary key) = foreign key of reply
		//rb = id(admin), reno, content
		bdao.insertReply(rb);
		
		bdao.plusReplyCnt(rb.getReno());
		
		return goToPage+"?no="+rb.getReno();
	}
}
