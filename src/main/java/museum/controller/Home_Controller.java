package museum.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.spring.ex.NaverLoginBO;

import exhibition.model.ExhibitionBean;
import exhibition.model.ExhibitionDao;
import museum.model.MuseumBean;
import museum.model.MuseumDao;

@Controller
public class Home_Controller {
	final String command = "home.mu";
	String getPage = "/home";
	
	@Autowired
	MuseumDao mdao;
	
	@Autowired
	ExhibitionDao edao;
	
	/* NaverLoginBO */
	@Autowired
	NaverLoginBO naverLoginBO;
	
	private String apiResult = null;
	
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}
 
	
	@RequestMapping(value=command, method=RequestMethod.GET)
	public String home(Model model, HttpSession session) throws IOException, ParseException {
		
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		
		System.out.println("home session=>"+naverAuthUrl);
		//https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
		//redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
		System.out.println("네이버:" + naverAuthUrl);
		
		//네이버 
		model.addAttribute("url", naverAuthUrl);
		
		
		List<MuseumBean>lists =  mdao.getMuseumList();
		model.addAttribute("lists",lists);
		
		List<ExhibitionBean> elists = edao.getExByEndday();
		model.addAttribute("elists",elists);
		
		
		return getPage;
	}
	
	@RequestMapping(value="/callback", method=RequestMethod.GET)
	public String home(Model model, @RequestParam(required=false) String code, @RequestParam(required=false) String state, HttpSession session) throws IOException, ParseException {
		
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		
		//https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
		//redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
		System.out.println("네이버:" + naverAuthUrl);
		
		//네이버 
		model.addAttribute("url", naverAuthUrl);
		
		
		System.out.println("여기는 callback");
		System.out.println("callback state="+state);
		if(code != null && state != null) {
			
			OAuth2AccessToken oauthToken;
			oauthToken = naverLoginBO.getAccessToken(session, code, state);
			System.out.println("callback oauthToken="+oauthToken);
			
			//1. 로그인 사용자 정보를 읽어온다.
			apiResult = naverLoginBO.getUserProfile(oauthToken);  //String형식의 json데이터
			
			/** apiResult json 구조
				{"resultcode":"00",
				 "message":"success",
				 "response":{"id":"33666449","nickname":"shinn****","age":"20-29","gender":"M","email":"sh@naver.com","name":"\uc2e0\ubc94\ud638"}}
			 **/
			
			//2. String형식인 apiResult를 json형태로 바꿈
			JSONParser parser = new JSONParser();
			Object obj = parser.parse(apiResult);
			JSONObject jsonObj = (JSONObject) obj;
			
			//3. 데이터 파싱 
			//Top레벨 단계 _response 파싱
			JSONObject response_obj = (JSONObject)jsonObj.get("response");
			//response의 nickname값 파싱
			String name = (String)response_obj.get("name");
			
			System.out.println(name); //null
			
			//4.파싱 닉네임 세션으로 저장
			session.setAttribute("sessionId",name); //세션 생성
			
			model.addAttribute("result", apiResult);
			
		}
		List<MuseumBean>lists =  mdao.getMuseumList();
		model.addAttribute("lists",lists);
		
		List<ExhibitionBean> elists = edao.getExByEndday();
		model.addAttribute("elists",elists);
		
		
		return "redirect:home.mu";
		
	}
	
	//로그아웃
		@RequestMapping(value = "/logout", method = { RequestMethod.GET, RequestMethod.POST })
		public String logout(HttpSession session)throws IOException {
				System.out.println("여기는 logout");
				session.invalidate();
	 
		        
				return "redirect:home.mu";
			}
}
