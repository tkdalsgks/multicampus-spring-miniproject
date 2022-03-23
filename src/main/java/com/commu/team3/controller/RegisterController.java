package com.commu.team3.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.commu.team3.dto.MemberDTO;
import com.commu.team3.service.MemberService;

@Controller
public class RegisterController {
	@Autowired
	@Qualifier("commuservice")
	MemberService service;
	
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
	
	@GetMapping("/register")
	public String insertform() {
		return "register";
	}
	
	@PostMapping("/register")
	public String insertresult(MemberDTO dto) {
		int result = service.insertmember(dto);
		ModelAndView mv = new ModelAndView();
		mv.addObject("result", result);
		mv.setViewName("register");
		return "redirect:/login";
	}
	
//	@GetMapping("/login")
//	public void login() {}
//	
//	@PostMapping("/login")
//	public String login(String userId
//					, String userPwd
//					, HttpSession session
//					, RedirectAttributes redirectAttributes) {
//		
//		MemberDTO dto = MemberService.authenticateUser(userId, userPwd);
//		
//		if(MemberDTO == null) {
//			redirectAttributes.addAttribute("msg","아이디나 비밀번호가 틀렸습니다 뀨!");
//			return "redirect:/member/login";
//		}
//		
//		session.setAttribute("authenticated", member);
//		return "redirect:/";
//	}
//	
//	@GetMapping("logout")
//	public String logout(HttpSession session) {
//		session.removeAttribute("authenticated");
//		return "redirect:/";
//	}
}
