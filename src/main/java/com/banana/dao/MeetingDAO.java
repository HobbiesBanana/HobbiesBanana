package com.banana.dao;

import java.util.HashMap;
import java.util.List;

import com.banana.domain.Apply;
import com.banana.domain.Host;
import com.banana.domain.Meeting;
import com.banana.domain.Review;
import com.banana.domain.Wishlist;

public interface MeetingDAO {
	// 방 만들기
	public void insertMeeting(Meeting meet);

	// 방 상세보기
	public HashMap getMeeting(Meeting meet);

	// 방 목록 출력
	public List<HashMap> getMeetingList(Meeting meet);

	// 리뷰등록
	public void insertReview(Review re);

	// 리뷰 리스트
	public List<Review> getReviewList(Review re);
	
	public HashMap getHostDetail(Host h);
	
	public void meetingApply(Apply a);
	
	//리스트 페이징 갯수
	public int getTotalCount();
	// 전체 방 목록 출력 페이징
	public List<HashMap> selectMeeting(int firstRow, int endRow);
	
	//즐겨찾기 
	public void insertScrap(Wishlist wish);
	
	//호스트 아이디 검색
	public Host selecthost(Host h);
	
}
