package com.banana.controller;

import java.util.List;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.xml.ws.RequestWrapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.annotation.RequestScope;
import org.springframework.web.servlet.ModelAndView;

import com.banana.domain.BlackList;
import com.banana.domain.Event;
import com.banana.domain.Meeting;
import com.banana.domain.Member;
import com.banana.domain.Notice;
import com.banana.domain.Question;
import com.banana.service.AdminService;
import com.banana.service.MemberService;

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;
	/*
	 * @RequestMapping("/{step}.do") public String viewPage(@PathVariable String
	 * step) { return step; }
	 */

	// <회원 관리 페이지>
	// 회원 검색하기
	@RequestMapping("memberSet.do")
	public String memberSet(String searchCondition, String searchKeyword, Model m) {
		HashMap map = new HashMap();
		map.put("searchCondition", searchCondition);
		map.put("searchKeyword", searchKeyword);

		List<Member> list = adminService.memberSet(map);
		m.addAttribute("memberSet", list);
		return "admin_memberSet";
	}

	// 회원 상세보기 조회
	@RequestMapping("memberSet2.do")
	public String selectMemberSet(Member m, Model md) {
		md.addAttribute("memberSet", adminService.selectMemberSet(m));
		return "admin_memberSet2";
	}

	// 회원 삭제
	@RequestMapping("deleteMemberSet.do")
	public String deleteMemberSet(Member m) {
		adminService.deleteMemberSet(m);
		return "redirect:memberSet.do";
	}

	// <휴면계정 관리>
	// 휴먼계정 목록보기
	@RequestMapping("longtimeMember.do")
	public String longtimeMember(Member m, Model md) {
		md.addAttribute("longtimeMember", adminService.longtimeMemberList(m));
		return "admin_longtime_member";
	}

	// <블랙리스트 관리>
	// 블랙리스트 목록보기
	@RequestMapping("blacklist.do")
	public String blacklistList(HashMap map, Model md) {
		List<BlackList> list = adminService.blacklistList(map);
		md.addAttribute("blacklistList", adminService.blacklistList(map));
		return "admin_blacklist_list";
	}

	// 블랙리스트 목록으로 넘어가기
	@RequestMapping("blacklist_view.do")
	public String blacklist_view() {
		return "redirect:blacklist.do";
	}

	// 블랙리스트 상세보기
	@RequestMapping("blacklist2.do")
	public String blacklistSet(BlackList b, Model md) {
		HashMap list = adminService.blacklistSet(b);
		md.addAttribute("blacklistSet", list);
		return "admin_blacklist_commit";
	}

	// 블랙리스트 결과처리(등록)
	@RequestMapping("blacklistSubmit.do")
	public String blacklistSubmit(BlackList b) {
		adminService.blacklistSubmit(b);
		return "redirect:blacklist.do";
	}

	// <게시물관리>
	// 게시물 목록검색
	@RequestMapping("meetinglist.do")
	public String meetingList(String meeting_search, String meeting_searchKeyword, Model md) {
		HashMap map = new HashMap();
		map.put("meeting_search", meeting_search);
		map.put("meeting_searchKeyword", meeting_searchKeyword);

		List<HashMap> list = adminService.meetingList(map);
		md.addAttribute("meetingList", list);
		return "admin_meetinglist";
	}

	// 게시물 상세보기
	@RequestMapping("meetinglist2.do")
	public String meetingSet(Meeting mt, Model md) {
		HashMap list = adminService.meetingSet(mt);
		md.addAttribute("meetingSet", list);
		return "admin_meetinglist2";
	}

	// 게시물 삭제하기
	@RequestMapping("meetingDelete.do")
	public String meetingDelete(Meeting mt) {
		adminService.meetingDelete(mt);
		return "redirect:meetinglist.do";
	}

	// 현재 진행중인 게시물 조회
	@RequestMapping("meetingNow.do")
	public ModelAndView meetingNow() {
		List<HashMap> list = adminService.meetingNow();
		// md.addAttribute("meetingNow", list);
		// return "admin_meeting_now";
		ModelAndView mv = new ModelAndView();
		mv.addObject("meetingNow", list);
		mv.setViewName("admin_meeting_now");
		return mv;
	}

	// <이벤트 관리>
	// 이벤트 목록보기
	@RequestMapping("eventlist.do")
	public String eventList(Event e, Model md) {
		md.addAttribute("eventList", adminService.eventList(e));
		return "admin_eventlist";
	}

	// 이벤트 등록하기 넘어가기
	@RequestMapping("eventInsertlist.do")
	public String eventInsertlist() {
		return "admin_event_insert";
	}

	// 이벤트 등록하기
	@RequestMapping("eventInsert.do")
	public String eventInsert(Event e) throws IOException {
		adminService.eventInsert(e);
		return "redirect:eventlist.do";
	}

	// 이벤트 상세보기
	@RequestMapping("eventlist2.do")
	public String eventSet(Event e, Model md) {
		md.addAttribute("eventSet", adminService.eventSet(e));
		return "admin_eventlist2";
	}

	// 이벤트 삭제하기
	@RequestMapping("eventDelete.do")
	public String eventDelete(Event e) {
		adminService.eventDelete(e);
		return "redirect:eventlist.do";
	}

	// <Q&A 관리>
	// Q&A 목록보기
	@RequestMapping("qnaList.do")
	public String qnaList(Question q, Model md) {
		md.addAttribute("qnaList", adminService.qnaList(q));
		return "admin_qna";
	}

	// Q&A 상세보기
	@RequestMapping("qnaSet.do")
	public String qnaSet(Question q, Model md) {
		HashMap list = adminService.qnaSet(q);
		md.addAttribute("qnaSet", list);
		return "admin_qna2";
	}

	// Q&A 답글달기
	@RequestMapping("qnaUpdate.do")
	public String qnaUpdate(Question q) {
		adminService.qnaUpdate(q);
		return "redirect:qnaList.do";
	}
	
	
	//<공지사항 관리>
	//공지사항 목록 조회
	@RequestMapping("noticelist.do")
	public String noticelist(Notice n, Model md) {
		md.addAttribute("noticelist", adminService.noticelist(n));
		return "admin_noticelist";
	}
	//공지사항 상세조회
	@RequestMapping("noticeSet.do")
	public String noticeSet(Notice n, Model md) {
		md.addAttribute("noticeSet",adminService.noticeSet(n));
		return "admin_noticelist2";
	}
	//공지사항 입력하기로 넘어가기
	@RequestMapping("noticeinsertset.do")
	public String noticeinsertset() {
		return "admin_notice_insert";
	}
	//공지사항 입력
	@RequestMapping("noticeinsert.do")
	public String noticeinsert(Notice n)throws IOException {
		adminService.noticeinsert(n);
		return "redirect:noticelist.do";
	}
	//공지사항 삭제
	@RequestMapping("noticeDelete.do")
	public String noticeDelete(Notice n) {
		adminService.noticeDelete(n);
		return "redirect:noticelist.do";
	}
	 
}
