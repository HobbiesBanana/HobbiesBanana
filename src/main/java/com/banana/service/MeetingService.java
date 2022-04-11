package com.banana.service;

import java.util.HashMap;
import java.util.List;

import com.banana.domain.Apply;
import com.banana.domain.Host;
import com.banana.domain.Meeting;
import com.banana.domain.Review;
import com.banana.domain.Wishlist;

public interface MeetingService {
	//방 만들기
	public void insertMeeting(Meeting meet);
	
	//방 상세보기
	public HashMap getMeeting(Meeting meet);
		
	//방 목록조회
	public List<HashMap> getMeetingList(Meeting meet);
	
	//리뷰 등록
	public void insertReview(Review re);
	
	//즐겨찾기(스크랩)
	public void insertScrap(Wishlist wish);

	//리뷰 리스트
	public List<Review> getReviewList(Review re);
	
	public HashMap getHostDetail(Host h);
	
	public void meetingApply(Apply a);
	
	public int getTotalCount();
	
	public List<HashMap> selectMeeting(String page); 
	
	//호스트 아이디 검색
	public Host selecthost(Host h);
	

}
