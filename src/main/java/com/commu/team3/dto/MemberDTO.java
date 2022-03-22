package com.commu.team3.dto;

import org.springframework.stereotype.Component;

@Component
public class MemberDTO {
	private String userName, userId, userEmail, userPwd;

	public MemberDTO() {
	}

	public MemberDTO(String userId, String userPwd) {
		this.userId = userId;
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	@Override
	public String toString() {
		return "MemberDTO [userName=" + userName + ", userId=" + userId + ", userEmail=" + userEmail + ", userPwd="
				+ userPwd + "]";
	}

}
