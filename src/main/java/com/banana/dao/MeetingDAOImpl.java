package com.banana.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.banana.domain.Apply;
import com.banana.domain.Host;
import com.banana.domain.Meeting;
import com.banana.domain.Review;
import com.banana.domain.Wishlist;

@Repository("meetingDAO")
public class MeetingDAOImpl implements MeetingDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	// 방만들기
	public void insertMeeting(Meeting meet) {
		mybatis.insert("MeetingDAO.insertMeeting", meet);
	}

	// 방 상세보기
	public HashMap getMeeting(Meeting meet) {
		return mybatis.selectOne("MeetingDAO.getMeeting", meet);
	}

	// 방 목록보기
	public List<HashMap> getMeetingList(Meeting meet) {
		return mybatis.selectList("MeetingDAO.getMeetingList", meet);
	}

	// 리뷰등록
	public void insertReview(Review re) {
		mybatis.insert("MeetingDAO.insertReview", re);
	}

	// 리뷰 리스트
	public List<Review> getReviewList(Review re) {
		return mybatis.selectList("MeetingDAO.getReviewList", re);
	}
	// 호스트 상세보기
	public HashMap getHostDetail(Host h) {
		return mybatis.selectOne("MeetingDAO.getHostDetail", h);
	}
	//방 신청하기
	public void meetingApply(Apply a) {
		mybatis.insert("MeetingDAO.meetingApply", a);
	}
	// 리스트 페이징 갯수
	public int getTotalCount() {
		return mybatis.selectOne("MeetingDAO.getTotalCount");
	}
	
	public List<HashMap> selectMeeting(int firstRow, int endRow){
		HashMap con = new HashMap();
		con.put("firstRow", firstRow);
		con.put("endRow", endRow);
		
		return mybatis.selectList("MeetingDAO.selectMeeting",con);
	}
	
	//즐겨찾기
	public void insertScrap(Wishlist wish) {
		mybatis.insert("MeetingDAO.insertScrap", wish);
	}
	
	//호스트 아이디 검색
	public Host selecthost(Host h) {
		return mybatis.selectOne("MeetingDAO.selecthost", h);
	}
	
}
