package reservation.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import reservation.model.ReservationDao;

@Controller
public class Re_Delete_Controller {
	final String command = "delete.re";
	String getPage="redirect:mypage.mem";
	
	@Autowired
	ReservationDao rdao;
	
	@RequestMapping(command)
	public String delete(int no, int mno,HttpServletResponse response) throws IOException {
		System.out.println("no:"+no);
		System.out.println("mno:"+mno);
		
		rdao.deleteByNo(no);
		
		response.setContentType("text/html charset=UTF-8");
		PrintWriter writer = null;
		
		writer = response.getWriter();
		writer.println("<script>alert('예매가 취소되었습니다.');</script>");
		writer.print("<script>location.href='mypage.mem?no="+mno);
		writer.print("'</script>");
		writer.flush();
		
		return getPage+"?no="+mno;
	}
	
	
}
