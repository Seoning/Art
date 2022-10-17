package reservation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import exhibition.model.ExhibitionBean;
import exhibition.model.ExhibitionDao;
import museum.model.MuseumBean;
import museum.model.MuseumDao;
import reservation.model.ReservationDao;

@Controller
public class Reserve_Controller {
	final String command = "reservation.re";
	String getPage = "/reserve";
	
	@Autowired
	ExhibitionDao edao;
	
	@Autowired
	MuseumDao mdao;
	
	@Autowired
	ReservationDao rdao;
	
	@RequestMapping(command)
	public String reserve(int no, Model model) { //no = exhibition no
		
		ExhibitionBean eb = edao.getByNo(no);
		
		MuseumBean mb = mdao.getByNo(no);
		
		model.addAttribute("eb",eb);
		model.addAttribute("mb",mb);
		return getPage;
	}
	
}
