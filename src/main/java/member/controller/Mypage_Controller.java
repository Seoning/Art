package member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import member.model.MemberBean;
import member.model.MemberDao;
import reservation.model.ReservationBean;
import reservation.model.ReservationDao;

@Controller
public class Mypage_Controller {
	final String command = "mypage.mem";
	final String command2 = "signout.mem";
	final String command3 = "user_update.mem";
	
	String getPage = "/mypage";
	String getPage2 = "/user_update";
	String goToPage = "redirect:home.mu";
	
	@Autowired
	ReservationDao rdao;
	
	@Autowired
	MemberDao mdao;
	
	@RequestMapping(command)
	public String mypage(int no, Model model) {
		
		MemberBean memb = mdao.getByNo(no);
		model.addAttribute("memb",memb);
		
		List<ReservationBean>lists = rdao.getById(memb.getId());
		
		model.addAttribute("lists",lists);
		
		return getPage;
	}
	
	@RequestMapping(command2)
	public String signout(int no,String pw, HttpServletResponse response, HttpSession session) throws IOException{
		
		MemberBean memb = mdao.getByNo(no);
		
		System.out.println("pw:"+pw);
		System.out.println("pw:"+memb.getPw());
		
		
		response.setContentType("text/html; chatset=UTF-8");
		PrintWriter writer = null;
		if(memb.getPw().equals(pw)) {
			writer = response.getWriter();
			writer.println("<script>alert('회원탈퇴가 완료 되었습니다.');</script>");
			writer.println("<script>location.href='home.mu'</script>");
			mdao.deleteByNo(no);
			session.invalidate();
			writer.flush();
		}
		else {
			writer = response.getWriter();
			writer.println("<script>alert('비밀번호가 일치하지 않습니다.');</script>");
			writer.println("<script>location.href='mypage.mem?no="+memb.getNo()+"'</script>");
			writer.flush();
		}
		return goToPage;
	}
	
	@RequestMapping(value=command3, method = RequestMethod.GET)
	public String update(int no, Model model) {
		
		MemberBean memb = mdao.getByNo(no);
		model.addAttribute("memb",memb);
		return getPage2;
	}
	
	@RequestMapping(value=command3,method = RequestMethod.POST)
	public String update(MemberBean memb,
			@RequestParam String address,
			@RequestParam String sample6_address,
			@RequestParam String sample6_detailAddress,
			@RequestParam String sample6_extraAddress
			) {
		
		System.out.println(memb.getName()+"/"+memb.getNo()+"/"+memb.getSignup_day());
		
		
		String totalAddress = address+" "+sample6_address+" "+sample6_detailAddress+" "+sample6_extraAddress;
		memb.setAddress(totalAddress);
		
		mdao.updateMember(memb);
		
		return getPage;
	}
	
}
