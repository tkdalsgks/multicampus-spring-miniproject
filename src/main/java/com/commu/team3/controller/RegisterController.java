package com.commu.team3.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.commu.team3.dto.MemberDTO;
import com.commu.team3.service.MemberService;

@Controller
public class RegisterController {
	@Inject
	MemberService service;
	
	// selectregister.jsp
	@PostMapping("select")
	public String selectregister() {
		return "selectregister";
	}
	
	// agreement.jsp
	@GetMapping("agreement")
	public String agreement() {
		return "agreement";
	}
	
	// register.jsp
	@GetMapping("register")
	public String registerView() {
		return "register";
	}
	
	@PostMapping("register")
	public String register(MemberDTO dto) {
//		int result = service.insertmember(dto);
//		ModelAndView mv = new ModelAndView();
//		mv.addObject("result", result);
//		mv.setViewName("register");
//		return "redirect:/login";
		int result = service.checkId(dto);
			if(result == 1) {
				return "/register";
			} else if(result == 0) {
				service.insertmember(dto);
				return "redirect:/login";
			}
		return "redirect:/";
	}
	
	@ResponseBody
	@PostMapping("checkId")
	public int checkId(MemberDTO dto) {
		int result = service.checkId(dto);
		return result;
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
