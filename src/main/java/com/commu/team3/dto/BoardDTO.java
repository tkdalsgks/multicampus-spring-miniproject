package com.commu.team3.dto;

import java.time.LocalDateTime;

import org.springframework.stereotype.Component;

/**
 * @author Seongil, Yoon
 * @author ena, Yoon
 */
public class BoardDTO {
	private int boardNo;
	private String boardName;
	private String boardContent;
	private String userName;
	private LocalDateTime regdate;
	private String boardType;

	public BoardDTO() {
		super();
	}

	public BoardDTO(int boardNo, String boardName, String boardContent, String userName, LocalDateTime regdate,
			String boardType) {
		super();
		this.boardNo = boardNo;
		this.boardName = boardName;
		this.boardContent = boardContent;
		this.userName = userName;
		this.regdate = regdate;
		this.boardType = boardType;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getBoardName() {
		return boardName;
	}

	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public LocalDateTime getRegdate() {
		return regdate;
	}

	public void setRegdate(LocalDateTime regdate) {
		this.regdate = regdate;
	}

	public String getBoardType() {
		return boardType;
	}

	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}

	@Override
	public String toString() {
		return "BoardDTO [boardNo=" + boardNo + ", boardName=" + boardName + ", boardContent=" + boardContent
				+ ", userName=" + userName + ", regdate=" + regdate + ", boardType=" + boardType + "]";
	}

}
