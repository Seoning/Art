package museum.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import museum.model.MuseumBean;
import museum.model.MuseumDao;

@Controller
@ComponentScan("museum.*")
public class A_MuseumInsert_Controller {
	final String command = "insert.mu";
	String getPage = "/admin/museum_insert";
	String goToPage = "/admin/museum_List";
	
	@Autowired
	MuseumDao mdao;
	
	@Autowired
	ServletContext applicaion;
	
	@RequestMapping(value=command, method = RequestMethod.GET)
	public String insert() {
		
		return getPage;
	}
	
	@RequestMapping(value=command, method = RequestMethod.POST)
	public String insert(@Valid MuseumBean mb,BindingResult result, String ph1, String ph2) throws IllegalStateException, IOException {
		System.out.println("name:"+mb.getName());
		mb.setPh(ph1+"-"+ph2);
		System.out.println("ph:"+mb.getPh());
		
		if(result.hasErrors()) {
			return getPage;
		}
		
		MultipartFile mf = mb.getUpload();
		System.out.println(mb.getUpload());
		String url = applicaion.getRealPath("/resources/img/museumImg");
		System.out.println("url:"+url);
		
		System.out.println(mf.getOriginalFilename());
		File file = new File(url+"/"+mf.getOriginalFilename());
		System.out.println("file");
		mf.transferTo(file);
		
		mdao.insertMuseum(mb);
		return goToPage;
	}
}
