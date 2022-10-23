package board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import board.model.BoardDao;

@Controller
public class boardDelete_Controller {
	final String command = "delete.bd";
	String getPage = "redirect:list.bd";
	
	@Autowired
	BoardDao bdao;
	
	@RequestMapping(value=command,method = RequestMethod.GET)
	public String delete(int no) {
		
		bdao.deleteByNo(no);
		
		return getPage;
	}
}
