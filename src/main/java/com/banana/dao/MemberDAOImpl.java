package com.banana.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.banana.domain.Member;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertMember(Member m) {
		System.out.println("===> Mybatis insertMember() 호출");
		mybatis.insert("MemberDAO.insertMember", m);
	}
	
	public Member idCheck(Member m) {
		System.out.println("===> MemberMapper idCheck 호출");
		return mybatis.selectOne("MemberDAO.idCheck", m);
	}
	
	public Member loginCheck(Member m) {
		System.out.println("===> MemberMapper idCheck 호출");
		return mybatis.selectOne("MemberDAO.loginCheck", m);
	}
}
