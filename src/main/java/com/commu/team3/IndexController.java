package com.commu.team3;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {
	
	// index.jsp
	@GetMapping("/")
	public String index() {
		return "index";
	}
	
	// header.jsp
	@GetMapping("/header")
	public String header() {
		return "header";
	}
	
	// header_login.jsp
	@GetMapping("/headerlogin")
	public String header_login() {
		return "header_login";
	}
	
	// 로그인 ------------------
	// login.jsp
	@GetMapping("/login")
	public String login() {
		return "login";
	}
//	@PostMapping("/login")
//	public ModelAndView login(MemberDTO dto) {
//		int result = service.insertmember(dto);
//		ModelAndView mv = new ModelAndView();
//		mv.addObject("result", result);
//		mv.setViewName("login");
//		return mv;
//	}
	
	// mypage.jsp
	@GetMapping("/mypage")
	public String mypage () {
		return "mypage";
	}
	// -------------------------
	
	// 회원가입 ----------------
	
//	@PostMapping("/register")
//	public ModelAndView register(MemberDTO dto) {
//		int result = service.insertmember(dto);
//		ModelAndView mv = new ModelAndView();
//		mv.addObject("result", result);
//		mv.setViewName("register");
//		return mv;
//	}
	
	// selectregister.jsp
	@GetMapping("/select")
	public String selectregister() {
		return "selectregister";
	}
	
	// agreement.jsp
	@GetMapping("/agreement")
	public String agreement() {
		return "agreement";
	}
	// -------------------------
	
	// 자유게시판 --------------
	// freeboard.jsp
	@GetMapping("/free")
	public String freeboard() {
		return "freeboard";
	}
	
	// free_view.jsp
	@GetMapping("/freeview")
	public String free_view() {
		return "free_view";
	}
	
	// freeboard_input.jsp
	@GetMapping("/freeinput")
	public String freeboard_input() {
		return "freeboard_input";
	}
	
	// freeboard_alter.jsp
	@GetMapping("/freealter")
	public String freeboard_alter() {
		return "freeboard_alter";
	}
	// -------------------------
	
	// 질문게시판 --------------
	@GetMapping("/question")
	public String questionboard() {
		return "qustionboard";
	}
	
	// qustion_view.jsp
	@GetMapping("/questionview")
	public String question_view() {
		return "qustion_view";
	}
	
	// questionboard_input.jsp
	@GetMapping("/questioninput")
	public String questionboard_input() {
		return "questionboard_input";
	}
	
	// questionboard_alter.jsp
	@GetMapping("/questionalter")
	public String questionboard_alter() {
		return "questionboard_alter";
	}
	// -------------------------
	
	// 기타 --------------------
	// anonymityboard.jsp
	@GetMapping("/anonymity")
	public String anonymityboard() {
		return "anonymityboard";
	}
	
	// chatroom.jsp
	@GetMapping("/chat")
	public String chatroom() {
		return "chatroom";
	}
	// -------------------------
}
