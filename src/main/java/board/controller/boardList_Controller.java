package board.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import board.model.BoardBean;
import board.model.BoardDao;
import utility.Paging;

@Controller
public class boardList_Controller {
	final String command = "list.bd";
	String getPage = "/list";
	
	@Autowired
	BoardDao bdao;
	
	@RequestMapping(command)
	public String list(Model model, @RequestParam(required=false)String keyword,
			 @RequestParam(required=false)String whatColumn,
			 @RequestParam(required=false)String pageNumber, HttpServletRequest request) {
		
		System.out.println("keyword:"+keyword);
		System.out.println("whatColumn:"+whatColumn);
		
		Map<String,String> map = new HashMap<String,String>();
		map.put("whatColumn", whatColumn);
		map.put("keyword", "%"+keyword+"%");
		
		int totalCount = bdao.getTotalCount(map);
		System.out.println("totalCount:"+totalCount);
		
		String url = request.getContextPath()+"/"+command;
		
		Paging pageInfo = new Paging(pageNumber, null, totalCount, url, whatColumn, keyword, null);
		List<BoardBean>lists = bdao.getAll(map,pageInfo);
		
		model.addAttribute("pageNumber",pageNumber);
		model.addAttribute("pageInfo",pageInfo);
		model.addAttribute("lists",lists);
		return getPage;
	}
}
