package com.banana.service;

import java.util.HashMap;
import java.util.List;

import com.banana.domain.BlackList;
import com.banana.domain.Event;
import com.banana.domain.Meeting;
import com.banana.domain.Member;
import com.banana.domain.Notice;
import com.banana.domain.Question;

public interface AdminService {
	//<회원 정보 관리>
	//회원 정보검색
	public List <Member> memberSet(HashMap map);
	//회원 목록상세보기
	public Member selectMemberSet(Member m);
	//회원 정보삭제
	void deleteMemberSet(Member m);
	
	
	//<휴먼 회원 관리>
	//휴먼 회원 목록
	public List<Member> longtimeMemberList(Member m);
	
	
	//<블랙리스트 관리>
	//블랙리스트 목록
	public List<BlackList> blacklistList(HashMap map);
	//블랙리스트 상세보기
	public HashMap blacklistSet(BlackList b);
	//블랙리스트 결과처리(등록)
	public void blacklistSubmit(BlackList b);
	
	
	//<게시물 관리>
	//게시물 정보검색
	public List<HashMap> meetingList(HashMap map);
	//게시물 상세보기
	public HashMap meetingSet(Meeting mt);
	//게시물 삭제
	public void meetingDelete(Meeting mt);
	//현재 진행중인 게시물 조회
	public List<HashMap> meetingNow();
	
	//<이벤트 관리>
	//이벤트 목록보기
	public List<Event> eventList(Event e);
	//이벤트 등록하기
	public void eventInsert(Event e);
	//이벤트 상세보기
	public Event eventSet(Event e);
	//이벤트 삭제하기
	public void eventDelete(Event e);


	//<Q&A 관리> 
	//Q&A 목록보기 
	public List<Question> qnaList(Question q);
	//Q&A 상세보기
	public HashMap qnaSet(Question q);
	//Q&A 답글달기 
	public void qnaUpdate(Question q);
	
	
	//<공지사항 관리>
	//공지사항 목록 조회
	public List<Notice> noticelist(Notice n);
	//공지사항 상세 조회
	public Notice noticeSet(Notice n);
	//공지사항 입력
	public void noticeinsert(Notice n);
	//공지사항 삭제
	public void noticeDelete(Notice n);
}
