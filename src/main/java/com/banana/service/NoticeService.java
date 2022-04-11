package com.banana.service;

import java.util.HashMap;
import java.util.List;

import com.banana.domain.Notice;

public interface NoticeService {
	//공지사항 리스트 출력
	public List<HashMap> npagingNotice(String npage);
	//공지사항 리스트 출력
	public List<Notice> getNoticeList(Notice no);
	//공지사항 상세보기
	public Notice getNoticeDetail(Notice no);
	//공지사항 페이징 카운트
	public int ngetTotalCount();
	
	public List<HashMap> npaging(String npage);
	
	public int ngetTotalCount2();
	
	
}
