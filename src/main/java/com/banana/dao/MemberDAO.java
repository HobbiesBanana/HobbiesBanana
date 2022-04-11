package com.banana.dao;

import java.util.HashMap;

import com.banana.domain.Member;

public interface MemberDAO {
	public void insertMember(Member m);
	
	public Member idCheck(Member m);
	
	public Member loginCheck(Member m);
}
