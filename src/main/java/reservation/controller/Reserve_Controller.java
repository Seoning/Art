package reservation.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import exhibition.model.ExhibitionBean;
import exhibition.model.ExhibitionDao;
import member.model.MemberBean;
import member.model.MemberDao;
import museum.model.MuseumBean;
import museum.model.MuseumDao;
import reservation.model.ReservationBean;
import reservation.model.ReservationDao;

@Controller
public class Reserve_Controller {
	final String command = "reservation.re";
	final String command2 = "minus.re";
	String getPage = "/reserve";
	
	@Autowired
	ExhibitionDao edao;
	
	@Autowired
	MuseumDao mdao;
	
	@Autowired
	MemberDao memdao;
	
	@Autowired
	ReservationDao rdao;
	
	@RequestMapping(command)
	public String reserve(int no, String count, @RequestParam(required=false) String day, Model model, HttpSession session) { //no = exhibition no
		
		
		int cnt = Integer.parseInt(count);
		
		System.out.println("count:"+count);
		System.out.println("day:"+day);
		System.out.println("no:"+no);
		System.out.println("cnt:"+cnt);
		
		ExhibitionBean eb = edao.getByNo(no);
		
		MuseumBean mb = mdao.getByNo(no);
		
		
		if(eb.getPrice()!=0) {
			if(cnt==0) { //plus
				cnt += 1;
				System.out.println("cnt:"+cnt);
				eb.setPrice(eb.getPrice()*cnt);
			}
			else {
				cnt += 1;
				System.out.println("cnt:"+cnt);
				eb.setPrice(eb.getPrice()*cnt);
			}
		}
		else {
			if(cnt==0) { //plus
				cnt += 1;
				System.out.println("cnt:"+cnt);
				eb.setPrice(eb.getPrice()*cnt);
			}
			else {
				cnt += 1;
				System.out.println("cnt:"+cnt);
				eb.setPrice(eb.getPrice()*cnt);
			}
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		if(day==null) {
			Date time = new Date();
			day = sdf.format(time);
		}
		System.out.println("day:"+day);
		
		if(session.getAttribute("login_Info") != null) {
			MemberBean memb = (MemberBean)session.getAttribute("login_Info");
			
			List<ReservationBean> lists = rdao.getById(memb.getId());
			
			model.addAttribute("lists",lists);
			
		}
		
		session.setAttribute("destination", sdf);
		
		
		model.addAttribute("day",day);
		model.addAttribute("cnt",cnt);
		model.addAttribute("eb",eb);
		model.addAttribute("mb",mb);
		return getPage;
	}
	
	@RequestMapping(command2)
	public String minus(int no, String count, @RequestParam(required=false) String day, Model model) {
		
		int cnt = Integer.parseInt(count);
		System.out.println("day:"+day);
		System.out.println("no:"+no);
		System.out.println("cnt:"+cnt);
		
		ExhibitionBean eb = edao.getByNo(no);
		
		MuseumBean mb = mdao.getByNo(no);
	
		if(cnt>1) { //plus
			cnt -= 1;
			System.out.println(cnt);
			eb.setPrice(eb.getPrice()*cnt);
		}
		
		model.addAttribute("day",day);
		model.addAttribute("cnt",cnt);
		model.addAttribute("eb",eb);
		model.addAttribute("mb",mb);
		return getPage;
	}
	
}
