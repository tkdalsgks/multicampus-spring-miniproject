package com.commu.team3.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.commu.team3.common.exception.UnauthorizedException;
import com.commu.team3.dao.IBoardDAO;
import com.commu.team3.dto.BoardDTO;

/**
 * @author Seongil, Yoon
 * @author Ena, Yoon
 */
@Service("iboardservice")
public class IBoardServiceImpl implements IBoardService {
	private final static int BOARD_PER_PAGE = 10;

	@Autowired
	@Qualifier("iboarddao")
	IBoardDAO dao;

	@Autowired
	HttpSession websession;

	@Override
	public List<BoardDTO> boardList(String boardType, int page) {
//		int[] limit = new int[] { (page - 1) * 10, 10 };
		page = (page - 1) * 10;
		System.out.println(page);
		return dao.boardList(boardType, page);
	}

	@Override
	public String BoardUserId(int boardNo) {
		return dao.BoardUserId(boardNo);
	}

	@Override
	public int boardCount(String boardType) {
		int total = dao.boardCount(boardType);
		int pagenum = 0;
		if (total % BOARD_PER_PAGE == 0) { // 10으로 고정
			pagenum = total / BOARD_PER_PAGE;
		} else {
			pagenum = total / BOARD_PER_PAGE + 1; // 여분의 페이지1개를 추가하기 위해
		}
		return pagenum; // 필요한 페이지갯수 넘김
	}

	@Override
	public void boardInsert(BoardDTO dto) {

		if (websession.getAttribute("userId") == null) {
			// 로그인하지 않앗으면 권한없음
			throw new UnauthorizedException(String.format("unauthorized you"));
		} else {
			// 권한 있으므로 등록
			dao.boardInsert(dto);
		}

	}

	@Override
	public BoardDTO boardDetail(int boardNo) {
		return dao.boardDetail(boardNo);
	}

	@Override
	public void boardUpdate(BoardDTO dto) {
		// 게시글의 userId 조회
		String boardUserId = dao.BoardUserId(dto.getBoardNo());

		if (websession.getAttribute("userId") == null
				|| websession.getAttribute("userId").equals(boardUserId) == false) {
			// 게시글의 작성자와 session객체의 작성자를 비교하기 위함. 다르면 권한없음
			throw new UnauthorizedException(String.format("unauthorized you"));
		} else {
			// 권한 있으므로 수정
			dao.boardUpdate(dto);
		}
	}

	@Override
	public void boardDelete(int boardNo) {
		// 게시글의 userId 조회
		String boardUserId = dao.BoardUserId(boardNo);

		if (websession.getAttribute("userId") == null
				|| websession.getAttribute("userId").equals(boardUserId) == false) {
			// 게시글의 작성자와 session객체의 작성자를 비교하기 위함. 다르면 권한없음
			throw new UnauthorizedException(String.format("unauthorized you"));
		} else {
			// 권한 있으므로 삭제
			dao.boardDelete(boardNo);
		}
	}

}
