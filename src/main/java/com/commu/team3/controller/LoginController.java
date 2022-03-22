package com.commu.team3.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.commu.team3.dto.MemberDTO;
import com.commu.team3.service.MemberService;

@Controller
public class LoginController {
	@Autowired
	@Qualifier("commuservice")
	MemberService service;
	
	
	@GetMapping("login")
	public void login() {}
	
	@PostMapping("login")
	public String login(String userId
					, String userPwd
					, HttpSession session
					, RedirectAttributes redirectAttributes) {
		
		MemberDTO dto = service.authenticateUser(userId, userPwd);
		
		if(dto == null) {
			redirectAttributes.addAttribute("msg","아이디나 비밀번호가 틀렸습니다");
			return "redirect:/member/login";
		}
		
		session.setAttribute("authenticated", dto);
		return "redirect:/";
	}
	
	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.removeAttribute("authenticated");
		return "redirect:/";
	}
	
//	@PostMapping("/login")
//	public String Login(@RequestParam("userId") String userId, @RequestParam("userPwd") String userPwd) throws Exception {
//		String path = "";
//		MemberDTO dto = new MemberDTO();
//		dto.setUserId(userId);
//		dto.setUserPwd(userPwd);
//		int result = service.Login(dto);
//		if(result == 1) {
//			path = "/";
//		} else {
//			path = "/";
//		}
//		return path;
//	}
	
	// mypage.jsp
	@GetMapping("/mypage")
	public String mypage () {
		return "mypage";
	}
}
