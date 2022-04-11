package com.banana.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.banana.domain.Notice;

@Repository("noticeDAO")
public class NoticeDAOImpl implements NoticeDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	//공지사항 리스트 출력
	public List<HashMap> npagingNotice(int firstRow, int endRow){
		HashMap hash = new HashMap();
		 hash.put("firstRow", firstRow);
		 hash.put("endRow", endRow);
		
		return mybatis.selectList("NoticeDAO.npagingNotice", hash);
	}
	
	//공지사항 페이징 개수
	public int ngetTotalCount() {
		return mybatis.selectOne("NoticeDAO.ngetTotalCount");
	}
	
	//공지사항 리스트 출력
	public List<Notice> getNoticeList(Notice no){
		return mybatis.selectList("NoticeDAO.getNoticeList", no);
	}
	
	//공지사항 상세보기 출력
	public Notice getNoticeDetail(Notice no) {
		return mybatis.selectOne("NoticeDAO.getNoticeDetail", no);
	}
	
	public List<HashMap> npaging(int firstRow, int endRow){
		HashMap hash = new HashMap();
		 hash.put("firstRow", firstRow);
		 hash.put("endRow", endRow);
		
		return mybatis.selectList("NoticeDAO.npaging", hash);
	}
	
	public int ngetTotalCount2() {
		return mybatis.selectOne("NoticeDAO.ngetTotalCount2");
	}
	
}
