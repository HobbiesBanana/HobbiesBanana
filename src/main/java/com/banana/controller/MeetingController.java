package com.banana.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.banana.domain.Apply;
import com.banana.domain.Host;
import com.banana.domain.Meeting;
import com.banana.domain.Review;
import com.banana.domain.Wishlist;
import com.banana.service.MeetingService;

@Controller
public class MeetingController {
	
	@Autowired
	private MeetingService meetingService;
	
	@RequestMapping("main.do")
	public String mainpage() {
		return "main";
	}
	
	// 방만들기 페이지 이동
	@RequestMapping("meetinginsertform.do")
	public String meetingform(Model m, Host h) {
		m.addAttribute("host",meetingService.selecthost(h));
		return "meetinginsertform";
	}
	
	// 방만들기 데이터 등록
	@RequestMapping("saveMeeting.do")
	public String insertMeeting(Meeting meet) {
		meetingService.insertMeeting(meet);
		return "redirect:community.do?page=1";
	}
	
	//방 상세보기
	@RequestMapping("getMeeting.do")
	public String getMeeting(Meeting meet, Model m) {
		HashMap list = meetingService.getMeeting(meet);
		m.addAttribute("meeting", list);
		return "Detailview";
	}
	// 커뮤니티 전체 리스트 페이징
	@RequestMapping("community.do")
	public String selectMeeting(Model m, @RequestParam("page") String page) {
		List<HashMap> list = meetingService.selectMeeting(page);
		m.addAttribute("meeting",list);
		int getTotalPage = meetingService.getTotalCount();
		m.addAttribute("count",getTotalPage);
		return "community";
	}
	
	// 커뮤니티 전체 리스트
	@RequestMapping("categoryCommunity.do")
	public String getMeetingList(Model m, Meeting meet) {
		List<HashMap> list = meetingService.getMeetingList(meet);
		m.addAttribute("meeting",list);
		return "community";
	}
	//리뷰 리스트
	@RequestMapping("getReviewList.do")
	public String getReviewList(Model m, Review re, Host h) {
		List<Review> list2 = meetingService.getReviewList(re);
		m.addAttribute("review", list2);
		HashMap host = meetingService.getHostDetail(h);
		m.addAttribute("host",host);
		return "hostDetail";
	}
	
	//리뷰 등록
	@RequestMapping("reviewinsert.do")
	public String insertReview(Model m, Review re) {
		meetingService.insertReview(re);
		List<Review> list2 = meetingService.getReviewList(re);
		m.addAttribute("review", list2);
		return "redirect:getReviewList.do?host_id="+re.getHost_id()+"&hostId="+re.getHost_id();
	}
	
	//방 신청하기
	@RequestMapping("meetingapply.do")
	public String meetingApply(Apply a) {
		meetingService.meetingApply(a);
		return "redirect:getMeeting.do";
	}
	
	//즐겨찾기
	@RequestMapping("wishlistinsert.do")
	public String insertScarp(Wishlist wish) throws IOException{
		System.out.println(wish.getMemberId());
		System.out.println(wish.getHostId());
		System.out.println(wish.getMeetingId());
		meetingService.insertScrap(wish);
		return "Detailview";
			
	}
		
}
