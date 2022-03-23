package com.commu.team3.VO;

public class MemberVO {
	String userId;
    String userPwd;

    public MemberVO() {}

    public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	// to String
    @Override
    public String toString() {
        return "MemberVO [userId=" + userId + ", userPwd=" + userPwd + "]";
    }
}

