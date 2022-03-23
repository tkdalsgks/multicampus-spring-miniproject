package com.commu.team3.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.commu.team3.VO.MemberVO;
import com.commu.team3.dto.MemberDTO;
import com.commu.team3.service.MemberService;
import com.commu.team3.service.MemberServiceImpl;

@Controller
public class LoginController {
	@Autowired
	@Qualifier("commuservice")
	MemberService service;
	
	// login.jsp
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@PostMapping("/login")
	public String Login(@RequestParam("userId") String userId, @RequestParam("userPwd") String userPwd) throws Exception {
		String path = "";
		MemberVO vo = new MemberVO();
		vo.setUserId(userId);
		vo.setUserPwd(userPwd);
		int result = service.Login(vo);
		if(result == 1) {
			path = "/";
		} else {
			path = "/login";
		}
		return path;
	}
	
	// mypage.jsp
	@GetMapping("/mypage")
	public String mypage () {
		return "mypage";
	}
}
