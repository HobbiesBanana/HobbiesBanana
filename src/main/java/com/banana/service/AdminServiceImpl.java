package com.banana.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.banana.dao.AdminDAOImpl;
import com.banana.domain.BlackList;
import com.banana.domain.Event;
import com.banana.domain.Meeting;
import com.banana.domain.Member;
import com.banana.domain.Notice;
import com.banana.domain.Question;

import oracle.net.aso.a;

@Service("AdminService")
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminDAOImpl adminDAO;
	//<회원 정보 관리>
	//회원 정보조회
	public List<Member> memberSet(HashMap map){
		return adminDAO.memberSet(map);
	}
	//회원 정보 상세보기
	public Member selectMemberSet(Member m) {
		return adminDAO.selectMemberSet(m);
	}
	//회원 정보 삭제
	public void deleteMemberSet(Member m) {
		adminDAO.deleteMemberSet(m);
	}
	
	//<휴먼 계정 관리>
	//휴먼 계정 목록
	public List<Member> longtimeMemberList(Member m){
		return adminDAO.longtimeMemberList(m);
	}
	
	
	//<블랙리스트 관리>
	//블랙리스트 목록
	public List<BlackList> blacklistList(HashMap map){
		return adminDAO.blacklistList(map);
	}
	//블랙리스트 상세보기
	public HashMap blacklistSet(BlackList b) {
		return adminDAO.blacklistSet(b);
	}
	//블랙리스트 결과처리(등록)
	public void blacklistSubmit(BlackList b) {
		adminDAO.blacklistSubmit(b);
	}
	
	
	//<게시물 관리>
	//게시물 정보검색
	public List<HashMap> meetingList(HashMap map){
		return adminDAO.meetingList(map);
	}
	//게시물 상세보기
	public HashMap meetingSet(Meeting mt) {
		return adminDAO.meetingSet(mt);
	}
	//게시물 삭제하기
	public void meetingDelete(Meeting mt) {
		adminDAO.meetingDelete(mt);
	}
	//현재 진행중인 게시물 조회
	public List<HashMap> meetingNow(){
		return adminDAO.meetingNow();
	}
	
	
	//<이벤트 관리>
	//이벤트 목록보기
	public List<Event> eventList(Event e){
		return adminDAO.eventList(e);
	}
	//이벤트 등록하기
	public void eventInsert(Event e) {
		adminDAO.eventInsert(e);
	}
	//이벤트 상세보기
	public Event eventSet(Event e) {
		return adminDAO.eventSet(e);
	}
	//이벤트 삭제하기
	public void eventDelete(Event e) {
		adminDAO.eventDelete(e);
	}


  
	//<Q&A 관리> 
	//Q&A 목록보기
	public List<Question> qnaList(Question q){
		return adminDAO.qnaList(q);
	}
	//Q&A 상세보기
	public HashMap qnaSet(Question q) {
		return adminDAO.qnaSet(q);
	}
	//Q&A 답글달기 
	public void qnaUpdate(Question q) {
		adminDAO.qnaUpdate(q);
	}
	
	
	//<공지사항 관리>
	//공지사항 목록 관리
	public List<Notice> noticelist(Notice n) {
		return adminDAO.noticelist(n);
	}
	//공지사항 상세 조회
	public Notice noticeSet(Notice n) {
		return adminDAO.noticeSet(n);
	}
	//공지사항 입력
	public void noticeinsert(Notice n) {
		adminDAO.noticeinsert(n);
	}
	//공지사항 삭제
	public void noticeDelete(Notice n) {
		adminDAO.noticeDelete(n);
	}
	
}
