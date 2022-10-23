package museum.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import museum.model.MuseumBean;
import museum.model.MuseumDao;

@Controller
@ComponentScan("museum.*")
public class A_MuseumUpdate_Controller {
	final String command = "update.mu";
	String getPage = "/admin/museum_Update";
	String goToPage="redirect:detail.mu";
	
	@Autowired
	MuseumDao mdao;
	
	@Autowired
	ServletContext config;
	
	@RequestMapping(value=command, method = RequestMethod.GET)
	public String update(String no,Model model){
		System.out.println("No:"+no);
		MuseumBean mb = mdao.getByNo(Integer.parseInt(no));
		String ph[] = mb.getPh().split("-");
		for(int i=0;i<ph.length;i++) {
			System.out.println(ph[i]);
			mb.setPh1(ph[i]);
			mb.setPh2(ph[i+1]);
			break;
		}
		System.out.println(mb.getPh1()+"/"+mb.getPh2());
		model.addAttribute("mb",mb);
		return getPage;
	}
	
	@RequestMapping(value=command, method =RequestMethod.POST)
	public String update(MuseumBean mb, String before) throws IllegalStateException, IOException {

		System.out.println(before);
		
		
		MultipartFile mf = mb.getUpload();
		String fname = mf.getOriginalFilename();
		System.out.println(fname);
		
		String path = config.getRealPath("/resources/img/museumImg/");
		File file = new File(path+fname);
		mf.transferTo(file);

		mb.setPh(mb.getPh1()+"-"+mb.getPh2());
		mdao.updateMuseum(mb);
		
		File delete = new File(path+before);
		if(delete.exists()) {
			delete.delete();
		}
		
		return goToPage+"?no="+mb.getNo();
	}
	
	
}
