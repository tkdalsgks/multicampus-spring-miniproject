package com.commu.team3.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.commu.team3.service.MemberService;


@Controller
public class IndexController {
	@Inject
	MemberService service;
	
	// index.jsp
	@GetMapping("/")
	public String index() {
		return "index";
	}
	
	// 자유게시판 --------------
	// freeboard.jsp
//	@GetMapping("/free")
//	public String freeboard() {
//		return "freeboard";
//	}
	
	// free_view.jsp
//	@GetMapping("/freeview")
//	public String free_view() {
//		return "free_view";
//	}
	
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
	
	// error 404
	@GetMapping("/404")
	public String error404() {
		return "error/404";
	}
}
