package exhibition.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import exhibition.model.ExhibitionBean;
import exhibition.model.ExhibitionDao;

@Controller
public class A_ExUpdate_Controller {
	final String command = "exupdate.ex";
	String getPage = "/admin/ex_Update";
	String goToPage = "redirect:detail.ex";
	
	@Autowired
	ExhibitionDao edao;
	
	@Autowired
	ServletContext config;
	
	@RequestMapping(value= command,method=RequestMethod.GET)
	public String update(int no, Model model) {
		System.out.println("no:"+no);
		ExhibitionBean eb = edao.getByNo(no);
		model.addAttribute("eb",eb);
		return getPage;
	}
	
	
	@RequestMapping(value= command,method=RequestMethod.POST)
	public String update(ExhibitionBean eb, String before) throws IllegalStateException, IOException {
		
		
		MultipartFile mf = eb.getUpload();
		String file = mf.getOriginalFilename();
		
		String path = config.getRealPath("/resources/img/exhib/");
		File f = new File(path+file);
		mf.transferTo(f);
		
		edao.updateExhibition(eb);
		
		File del = new File(path+before);
		if(del.exists()) {
			del.delete();
		}
		
		return goToPage+"?no="+eb.getNo();
	}
	
}
