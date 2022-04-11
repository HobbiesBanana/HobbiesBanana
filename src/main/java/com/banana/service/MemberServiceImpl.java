package com.banana.service;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.banana.dao.MemberDAOImpl;
import com.banana.domain.Member;

@Service("memberService")
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDAOImpl memberDAO;
	
	public void insertMember(Member m) {
		memberDAO.insertMember(m);
	}
	
	public Member idCheck_Login(Member m) {
		return memberDAO.idCheck(m);
	}
	
	public Member loginCheck(Member m, HttpSession session) {
		Member result = memberDAO.loginCheck(m);
		if(result != null) {
			session.setAttribute("email", result.getEmail());
			session.setAttribute("memberId", result.getMemberId());
			session.setAttribute("name", result.getName());
			session.setAttribute("realImg", result.getRealImg());
		}
		
		return result;
	}
	
	public void logout(HttpSession session) {
		session.invalidate();
	}
	
}
