package board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import board.model.BoardBean;
import board.model.BoardDao;
import board.model.ReplyBean;

@Controller
public class boardDetail_Controller {
	final String command = "detail.bd";
	String getPage = "/detail";
	
	@Autowired
	BoardDao bdao;
	
	@RequestMapping(command)
	public String detail(int no, Model model) {
		System.out.println("no:"+no);

		bdao.updateReadcnt(no);
		
		BoardBean bb = bdao.getByNo(no); //no
		
		List<ReplyBean> lists = bdao.repleByReno(no); //reno
		
		model.addAttribute("lists",lists);
		model.addAttribute("bb",bb);
		return getPage;
	}
}
