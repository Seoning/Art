package member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import member.model.MemberBean;
import member.model.MemberDao;

@Controller
public class SignIn_Controller {
	final String command = "login.mem";
	final String command2 = "logout.mem";
	final String command3 = "findId.mem";
	final String command4 = "findPw.mem";
	
	String getPage = "redirect:home.mu";
	String getPage1 = "/findId";
	String getPage2 = "/findPw";
	
	@Autowired
	MemberDao mdao;
	
	@RequestMapping(command)
	public String signin(String id, String pw,HttpSession session, HttpServletResponse response) throws IOException {
		
		System.out.println("id:"+id);
		System.out.println("pw:"+pw);
		
		Map<String,String> map = new HashMap<String,String>();
		
		map.put("id", id);
		map.put("pw", pw);
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer=null;
		
		MemberBean mb = mdao.login(map);
		if(mb == null) {
			writer = response.getWriter();
			writer.println("<script>alert('해당 아이디의 회원정보가 없습니다.');</script>");
			writer.println("<script>location.href='home.mu'</script>");
			writer.flush();
		}
		else {
			session.setAttribute("login_Info", mb);
			return getPage;
		}
		return getPage;
	}
	
	
	@RequestMapping(command2)
	public String logout(HttpSession session) {
		session.invalidate();
		return getPage;
	}
	
	@RequestMapping(command3)
	public String findId(String name, String phone, HttpSession session, HttpServletResponse response) throws IOException {
		
		Map<String,String> map = new HashMap<String,String>();
		
		map.put("name", name);
		map.put("phone", phone);
		MemberBean memb = mdao.findId(map);
		
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer=null;
		writer = response.getWriter();
		writer.println("<script>alert('회원님의 아이디는'"+memb.getId()+" 이고 비밀번호는 "+memb.getPw()+" 입니다.);</script>");
		writer.print("<script>location.href='home.mu'</script>");
		return getPage1;
	}
	
	@RequestMapping(command4)
	public String findPw() {
		return getPage2;
	}
	
	
}
