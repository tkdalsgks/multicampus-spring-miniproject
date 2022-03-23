package com.commu.team3.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
		int result = service.checkId(dto);
		int result2 = service.checkEmail(dto);
			if(result == 1) {
				return "/register";
			} else if(result2 == 1) {
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
	
	@ResponseBody
	@PostMapping("checkEmail")
	public int checkEmail(MemberDTO dto) {
		int result = service.checkEmail(dto);
		return result;
	}
}
