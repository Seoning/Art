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
public class A_ExInert_Controller {
	final String command = "exinsert.ex";
	String getPage = "/admin/ex_Insert";
	String goToPage = "redirect:exlist.ex";
	
	@Autowired
	ExhibitionDao edao;
	
	@Autowired
	ServletContext applicaion;
	
	@RequestMapping(value=command,method = RequestMethod.GET)
	public String insert() {
		
		return getPage;
	}
	
	@RequestMapping(value=command,method = RequestMethod.POST)
	public String insert(ExhibitionBean eb, Model model) throws IllegalStateException, IOException {
		
		eb.setReadcount(0);
		
		
		
		System.out.println(eb.getTitle()+","+eb.getStartday()+","+eb.getEndday()+","+eb.getReadcount()+","+eb.getUpload());
		
		MultipartFile mf =  eb.getUpload();
		System.out.println(mf.getOriginalFilename());
		
		String url = applicaion.getRealPath("/resources/img/exhib");
		System.out.println("url:"+url);
		
		File file = new File(url+"/"+mf.getOriginalFilename());
		System.out.println(file);
		mf.transferTo(file);
		
		edao.insertExhibition(eb);
		return goToPage;
	}
	
	
}
