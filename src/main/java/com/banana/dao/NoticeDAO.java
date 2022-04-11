package com.banana.dao;

import java.util.HashMap;
import java.util.List;

import com.banana.domain.Notice;

public interface NoticeDAO {
	
	//공지사항 페이징 리스트 출력
	public List<HashMap> npagingNotice(int firstRow, int endRow);
	//공지사항 리스트 출력
	public List<Notice> getNoticeList(Notice no);
	//공지사항 상세보기 출력
	public Notice getNoticeDetail(Notice no);
	//공지사항 리스트 페이징
	public int ngetTotalCount();
	
	public List<HashMap> npaging(int firstRow, int endRow);
	
	public int ngetTotalCount2();
}
