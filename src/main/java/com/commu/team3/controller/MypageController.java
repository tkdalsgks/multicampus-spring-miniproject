package com.commu.team3.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.commu.team3.dto.MemberDTO;
import com.commu.team3.service.MemberService;

@Controller
public class MypageController {
	@Inject
	MemberService service;
	
	// mypage.jsp
	@GetMapping("mypage")
	public String memberView(String userId, Model model) {
		// 회원 정보를 model에 저장
		model.addAttribute("dto", service.memberView(userId));
		return "mypage";
	}
	
	@GetMapping("/update")
	public String updateform(String id) {
		return "mypage";
	}
	
	@PostMapping("/update")
	public ModelAndView updateresult(MemberDTO dto) {
		int result = service.memberUpdate(dto);
		ModelAndView mv = new ModelAndView();
		mv.addObject("result", result);
		mv.setViewName("mypage");
		return mv;
	}
	
//	@RequestMapping("/delete")
//	public String deleteresult(String userId, RedirectAttributes rttr, HttpSession session) {
//		int result = service.memberDelete(userId);
//		if(result == 1) {
//			session.invalidate();
//			rttr.addFlashAttribute("msg", "정상적으로 회원탈퇴가 완료되었습니다.");
//			return "redirect:/";
//		}
//		return "redirect:/mypage";
//	}
	
//	@PostMapping("update")
//	public String memberUpdate(@ModelAttribute MemberDTO dto, Model model) {
//		// 비밀번호 체크
//		boolean result = service.checkPwd(dto.getUserId(), dto.getUserPwd());
//		if(result) {
//			service.memberUpdate(dto);
//			return "index";
//		} else {
//			model.addAttribute("dto", dto);
//			model.addAttribute("msg", "암호가 일치하지 않습니다.");
//			return "mypage";
//		}
//	}
	
	@PostMapping("delete")
	public String memberDelete(@RequestParam String userId, @RequestParam String userPwd, Model model, HttpSession session) {
		// 비밀번호 체크
		boolean result = service.checkPwd(userId, userPwd);
		if(result) {
			service.memberDelete(userId);
			session.invalidate();
			return "index";
		} else {
			model.addAttribute("msg", "암호가 일치하지 않습니다.");
			model.addAttribute("dto", service.memberView(userId));
			return "mypage";
		}
	}
}
