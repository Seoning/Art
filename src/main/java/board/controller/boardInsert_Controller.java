package board.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import board.model.BoardBean;
import board.model.BoardDao;
import member.model.MemberBean;

@Controller
public class boardInsert_Controller {
	final String command = "insert.bd";
	final String command2 = "a_insert.bd";
	String goToPage="redirect:list.bd";
	String getPage="/admin/a_insert";
	
	@Autowired
	BoardDao bdao;
	
	@RequestMapping(command)
	public String insert(
			String title,
			String email,
			String phone,
			String message,
			HttpSession session, HttpServletResponse response) throws IOException {
		
		System.out.println(title+"/"+email+"/"+phone);
		
		response.setContentType("text/html char=UTF-8");
		PrintWriter writer = null;
		MemberBean mb = (MemberBean)session.getAttribute("login_Info");
		if(mb==null) {
			writer = response.getWriter();
			writer.println("<script>alert('비회원은 문의등록을 할 수 없습니다.');</script>");
			writer.println("<script>location.href='home.mu'</script>");
			writer.flush();
		}
		BoardBean bb = new BoardBean();
		bb.setTitle(title);
		bb.setId(mb.getId());
		bb.setEmail(email);
		bb.setPhone(phone);
		bb.setMessage(message);
		bb.setNotice(0);
		bdao.insertBoard(bb);
		
		return goToPage;
	}
	
	@RequestMapping(value=command2, method = RequestMethod.GET)
	public String admin_insert(){
		
		return getPage;
	}
	
	@RequestMapping(value=command2, method = RequestMethod.POST)
	public String admin_insert(
			String title,
			String email,
			String phone,
			String message,
			HttpSession session, HttpServletResponse response) throws IOException {
		
		System.out.println(title+"/"+email+"/"+phone);
		
		response.setContentType("text/html char=UTF-8");
		PrintWriter writer = null;
		MemberBean mb = (MemberBean)session.getAttribute("login_Info");
		if(mb==null) {
			writer = response.getWriter();
			writer.println("<script>alert('비회원은 문의등록을 할 수 없습니다.');</script>");
			writer.println("<script>location.href='home.mu'</script>");
			writer.flush();
		}
		BoardBean bb = new BoardBean();
		bb.setTitle(title);
		bb.setId(mb.getId());
		bb.setEmail("admin");
		bb.setPhone("01012345678");
		bb.setMessage(message);
		bb.setNotice(1);
		
		System.out.println("notice:"+bb.getNotice());
		bdao.insertBoard(bb);
		
		return goToPage;
	}
}
