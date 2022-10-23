package board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import board.model.BoardBean;
import board.model.BoardDao;
import board.model.ReplyBean;

@Controller
public class A_replyUpdate_Controller {
	final String command = "updateReply.rp";
	String goToPage = "redirect:detail.bd";
	String getPage = "/admin/a_updateReply";
	
	@Autowired
	BoardDao bdao;
	
	@RequestMapping(value=command, method = RequestMethod.GET)
	public String update(int reno, int no, Model model) {
		
		BoardBean bb = bdao.getByNo(reno);
		model.addAttribute("bb",bb);
		
		List<ReplyBean> lists = bdao.repleByReno(reno);
		model.addAttribute("lists",lists);
		
		ReplyBean rb = bdao.repleByNo(no);
		model.addAttribute("rb",rb);
		return getPage;
	}
	
	@RequestMapping(value=command, method = RequestMethod.POST)
	public String update(ReplyBean rb , Model model) {
		
		bdao.updateReply(rb);
		return goToPage+"?no="+rb.getReno();
	}
}
