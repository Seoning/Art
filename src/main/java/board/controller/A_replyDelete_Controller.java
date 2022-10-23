package board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import board.model.BoardDao;

@Controller
public class A_replyDelete_Controller {
	final String command = "deleteReply.rp";
	String goToPage = "redirect:detail.bd";
	
	@Autowired
	BoardDao bdao;
	
	@RequestMapping(command)
	public String delete(int reno,int no) {
		bdao.deleteReplyByNo(no);
		bdao.minusReplyCnt(reno);
		return goToPage+"?no="+reno;
		
	}
}
