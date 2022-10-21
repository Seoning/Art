package reservation.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import reservation.model.ReservationBean;
import reservation.model.ReservationDao;

@Controller
public class Pay_Controller {
	final String command = "payfor.re";
	String getPage="redirect:mypage.mem?no=";
	
	@Autowired
	ReservationDao rdao;
	
	@RequestMapping(command)
	public String pay(ReservationBean rb, int no, Model model, HttpSession session) {
		
		session.removeAttribute("destination");
		
		System.out.println("no:"+no);
		System.out.println("id:"+rb.getId());
		System.out.println("museum:"+rb.getMuseum());
		System.out.println("title:"+rb.getTitle());
		
		rdao.insertData(rb);
		
		List<ReservationBean>lists = rdao.getById(rb.getId());
		
		model.addAttribute("lists",lists);
		return getPage+no;
	}
	
}
