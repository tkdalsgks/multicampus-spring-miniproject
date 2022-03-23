package com.commu.team3.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.commu.team3.dto.MemberDTO;
import com.commu.team3.service.MemberService;

@Controller
public class LoginController {
	@Inject
	MemberService service;
	
	@GetMapping("login")
	public String login() {
		return "login";
	}
	
	@PostMapping("user")
	public ModelAndView loginCheck(@ModelAttribute MemberDTO dto, HttpSession session) {
		String userId = service.loginCheck(dto, session);
		ModelAndView mv = new ModelAndView();
		if (userId != null) {	// 로그인 성공 시
			mv.setViewName("index"); // 뷰의 이름
		} else { // 로그인 실패 시
			mv.setViewName("login");
			mv.addObject("msg", "error");
		}
		return mv;
	}
	
	@GetMapping("logout")
	public ModelAndView logout(HttpSession session, ModelAndView mv) {
		service.logout(session);
		mv.setViewName("login");
		mv.addObject("msg", "logout");
		return mv;
	}
}
