package com.banana.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.banana.dao.MeetingDAOImpl;
import com.banana.domain.Apply;
import com.banana.domain.Host;
import com.banana.domain.Meeting;
import com.banana.domain.Review;
import com.banana.domain.Wishlist;

@Service("meetingService")
public class MeetingServiceImpl implements MeetingService {

	@Autowired
	private MeetingDAOImpl meetingDAO;
	
	private int totalRecCount;		// 전체 레코드 수	
	private int pageTotalCount;		// 전체 페이지 수
	private int countPerPage = 8;	// 한페이지당 레코드 수
	
	//listComment Paging
	public List<HashMap> selectMeeting(String page) {
		int pageNum = 1;
		if(page != null) {
			pageNum = Integer.parseInt(page);
		}
		int firstRow = pageNum*countPerPage-(countPerPage-1);
		int endRow = pageNum*countPerPage;
			
		return meetingDAO.selectMeeting(firstRow, endRow);
	}

	//listMeeting Paging
	public int getTotalCount() {
		totalRecCount = meetingDAO.getTotalCount();
			
		/*
		 * 전체 레코드 수	-	페이지 수
		 * 		9				3
		 * 		10				4
		 * 		11				4
		 * 		12				4
		 * 		13				5
		 * */
			
		if(totalRecCount%countPerPage>0) {
			pageTotalCount = (totalRecCount/countPerPage) + 1;
		}
		else {
			pageTotalCount = (totalRecCount/countPerPage);
		}
			
			
		//pageTotalCount = (totalRecCount/countPerPage-1)/countPerPage;
			
		return pageTotalCount;
	}

	// 방 만들기
	public void insertMeeting(Meeting meet) {
		meetingDAO.insertMeeting(meet);
	}

	// 방 상세보기
	public HashMap getMeeting(Meeting meet) {
		return meetingDAO.getMeeting(meet);
	}

	// 방 목록 조회
	public List<HashMap> getMeetingList(Meeting meet) {
		return meetingDAO.getMeetingList(meet);
	}
	
	//즐겨찾기 (스크랩)
	public void insertScrap(Wishlist wish) {
		meetingDAO.insertScrap(wish);
	}

	// 리뷰등록
	public void insertReview(Review re) {
		meetingDAO.insertReview(re);
	}

	// 리뷰 리스트
	public List<Review> getReviewList(Review re) {
		return meetingDAO.getReviewList(re);
	}
	// 호스트 상세보기
	public HashMap getHostDetail(Host h) {
		return meetingDAO.getHostDetail(h);
	}
	//방 신청하기
	public void meetingApply(Apply a) {
		meetingDAO.meetingApply(a);
	}
	//호스트 아이디 검색
	public Host selecthost(Host h) {
		return meetingDAO.selecthost(h);
	}
	
}
