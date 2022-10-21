package reservation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import exhibition.model.ExhibitionBean;
import exhibition.model.ExhibitionDao;
import reservation.model.ReservationBean;
import reservation.model.ReservationDao;

@Controller
public class Redetail_Controller {
	final String command = "detail.re";
	String getPage="/detail";
	
	@Autowired
	ReservationDao rdao;
	
	@Autowired
	ExhibitionDao edao;
	
	@RequestMapping(command)
	public String detail(int no, String title, Model model) {
		
		ReservationBean rb = rdao.getByNo(no);
		ExhibitionBean eb = edao.getByTitle(title);
		
		model.addAttribute("eb",eb);
		model.addAttribute("rb",rb);
		return getPage;
	}
	
}
