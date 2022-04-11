package com.banana.dao;


import java.util.HashMap;
import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.banana.domain.*;

@Repository("AdminDAO")
public class AdminDAOImpl implements AdminDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	//<회원 정보 관리>
	//회원 정보검색
	public List<Member> memberSet(HashMap map){
		return mybatis.selectList("AdminDAO.memberSet", map);
	}
	//회원 정보 상세보기
	public Member selectMemberSet(Member m) {
		return mybatis.selectOne("AdminDAO.selectMemberSet", m);
	}
	//회원 정보 삭제
	public void deleteMemberSet(Member m) {
		mybatis.delete("AdminDAO.deleteMemberSet", m);
	}
	
	

	//<휴먼 계정 관리>
	//휴먼 계정 목록 보기
	public List<Member> longtimeMemberList(Member m){
		return mybatis.selectList("AdminDAO.longtimeMemberList", m);
	}
	
	
	
	//<블랙리스트 관리>
	//블랙리스트 목록보기
	public List<BlackList> blacklistList(HashMap map){
		return mybatis.selectList("AdminDAO.blacklistList", map);
	}
	//블랙리스트 상세보기
	public HashMap blacklistSet(BlackList b) {
		return mybatis.selectOne("AdminDAO.blacklistSet", b);
	}
	//블랙리스트 결과처리(등록)
	public void blacklistSubmit(BlackList b) {
		mybatis.update("AdminDAO.blacklistSubmit", b);
	}


	//<게시물 관리>
	//게시물 정보검색
	public List<HashMap> meetingList(HashMap map){
		return mybatis.selectList("AdminDAO.meetingList", map);
	}
	//게시물 상세보기
	public HashMap meetingSet(Meeting mt) {
		return mybatis.selectOne("AdminDAO.meetingSet", mt);
	}
	//게시물 삭제
	public void meetingDelete(Meeting mt) {
		mybatis.delete("meetingDelete", mt);
	}
	//현재 진행중인 게시물 조회
	public List<HashMap> meetingNow(){
		return mybatis.selectList("AdminDAO.meetingNow");
	}
	
	
	//<이벤트 관리>
	//이벤트 목록보기
	public List<Event> eventList(Event e){
		return mybatis.selectList("AdminDAO.eventList",e);
	}
	//이벤트 등록하기
	public void eventInsert(Event e) {
		System.out.println(e.getEventImg());
		mybatis.insert("AdminDAO.eventInsert", e);
	}
	//이벤트 상세보기
	public Event eventSet(Event e) {
		return mybatis.selectOne("AdminDAO.eventSet", e);
	}
	//이벤트 삭제하기
	public void eventDelete(Event e) {
		mybatis.delete("AdminDAO.eventDelete", e);
	}
	
	
	
	//<Q&A 관리> 
	//Q&A 목록보기
	public List<Question> qnaList(Question q){
		return mybatis.selectList("AdminDAO.qnaList", q);
	}
	//Q&A 상세보기
	public HashMap qnaSet(Question q) {
		return mybatis.selectOne("AdminDAO.qnaSet", q);
	}
	//Q&A 답글달기 
	public void qnaUpdate(Question q) {
		mybatis.update("AdminDAO.qnaUpdate",q);
	}
	
	
	
	//<공지사항 관리>
	//공지사항 목록 조회
	public List<Notice> noticelist(Notice n){
		return mybatis.selectList("AdminDAO.noticelist", n);
	}
	//공지사항 상세 조회
	public Notice noticeSet(Notice n) {
		return mybatis.selectOne("AdminDAO.noticeSet",n);
	}
	//공지사항 입력
	public void noticeinsert(Notice n) {
		mybatis.insert("AdminDAO.noticeinsert", n);
	}
	//공지사항 삭제
	public void noticeDelete(Notice n) {
		mybatis.delete("AdminDAO.noticeDelete",n);
	}
	
}

