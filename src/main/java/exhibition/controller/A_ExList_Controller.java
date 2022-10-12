package exhibition.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import exhibition.model.ExhibitionBean;
import exhibition.model.ExhibitionDao;

@Controller
@ComponentScan("exhibition.*")
public class A_ExList_Controller {
	final String command = "exlist.ex";
	String getPage = "/admin/ex_list";
	
	@Autowired
	ExhibitionDao ed;
	
	@RequestMapping(command)
	public String list(Model model) {
		List<ExhibitionBean>lists = ed.getAllEx();
		model.addAttribute("lists",lists);
		return getPage;
	}
}
