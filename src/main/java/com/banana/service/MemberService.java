package com.banana.service;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import com.banana.domain.Member;

public interface MemberService {
	public Member idCheck_Login(Member m);
	
	public void insertMember(Member m);
	
	public Member loginCheck(Member m, HttpSession session);
	
	public void logout(HttpSession session);

}
