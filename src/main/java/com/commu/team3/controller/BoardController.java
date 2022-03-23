package com.commu.team3.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.commu.team3.dto.BoardDTO;
import com.commu.team3.service.IBoardService;

/**
 * @author Seongil, Yoon
 * @author Ena, Yoon
 * @author Seung-hyun, Kim
 */
@Controller
public class BoardController {

	@Autowired
	@Qualifier("iboardservice")
	IBoardService service;

	// 게시물 리스트 Model and View
	@GetMapping("/free")
	public String freeboard(@RequestParam(value = "page", defaultValue = "1") int page, Model model) {
		List<BoardDTO> list = service.boardList("free", page);
		int pagenum = service.boardCount("free");
		model.addAttribute("boardList", list);
		model.addAttribute("pagenum", pagenum);

		return "freeboard";
	}

	// 리스트조회
//	@ResponseBody
//	@GetMapping("/boardlist/{boardType}")
//	public List<BoardDTO> boardList(@PathVariable String boardType, @RequestParam("page") int page) {
//		List<BoardDTO> list = service.boardList(boardType, page);
//		return list;
//	}

//	@ResponseBody
//	@GetMapping("/boardCount/{boardType}")
//	public int boardCount(@PathVariable String boardType) {
//		return service.boardCount(boardType);
//	}

	// 작성페이지 매핑
	@RequestMapping(value = "/boardinsert", method = RequestMethod.GET)
	public String boardInsert() {
		return "freeboard_input";
	}

	// 게시글 데이터처리
	@RequestMapping(value = "/boardinsert", method = RequestMethod.POST)
	public String boardInsert(BoardDTO dto) {
		service.boardInsert(dto);
		return "redirect:free";
	}

	// 상세페이지
	@RequestMapping(value = "/boarddetail", method = RequestMethod.GET)
	public String boardDetail(@RequestParam int boardNo, Model model) {
		BoardDTO dto = service.boardDetail(boardNo);
		model.addAttribute("dto", dto);
		return "free_view";
	}

	// 수정페이지 매핑
	@RequestMapping(value = "/boardupdate", method = RequestMethod.GET)
	public String boardUpdate(@RequestParam int boardNo, Model model) {
		BoardDTO dto = service.boardDetail(boardNo);
		model.addAttribute("dto", dto);
		return "freeboard_alter";
	}

	// 데이터 수정 처리
	@RequestMapping(value = "/boardupdate", method = RequestMethod.POST)
	public String boardUpdate(BoardDTO dto) {
		service.boardUpdate(dto);
		return "redirect:free";
	}

	// 데이터 삭제 처리
	@RequestMapping(value = "/boarddelete", method = RequestMethod.GET)
	public String boardDelete(@RequestParam int boardNo) {
		service.boardDelete(boardNo);
		return "redirect:free";
	}
}
