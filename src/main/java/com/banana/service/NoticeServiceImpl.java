package com.banana.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.banana.dao.NoticeDAOImpl;
import com.banana.domain.Notice;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeDAOImpl noticeDAO;
	
	private int ntotalRecCount; 		//전체 레코드 수
	private int npageTotalCount; 	//전체 페이지 수
	private int ncountPerPage = 10; 	//한 페이지당 레코드 수
	
	//notice list paging
	public List<HashMap> npagingNotice(String npage) {
		int pageNum = 1;
		if(npage != null) {
			pageNum = Integer.parseInt(npage);
		}
		int firstRow = pageNum * ncountPerPage-(ncountPerPage-1);
		int endRow = pageNum * ncountPerPage;
		
		return noticeDAO.npagingNotice(firstRow, endRow);
	}
	//notice list countPaging
	public int ngetTotalCount() {
		ntotalRecCount=noticeDAO.ngetTotalCount();
		/*
		 * 전체 레코드 수	-	페이지 수
		 * 		9				3
		 * 		10				4
		 * 		11				4
		 * 		12				4
		 * 		13				5
		 * */
		if(ntotalRecCount%ncountPerPage>0) {
			npageTotalCount = (ntotalRecCount/ncountPerPage) + 1;
		}
		else {
			npageTotalCount = (ntotalRecCount/ncountPerPage);
		}
		//pageTotalCount = (totalRecCount / countPerPage-1)/countPerPage;
		return npageTotalCount;
	}
	
	 //공지사항 리스트 출력 
	 public List<Notice> getNoticeList(Notice no) { 
		 return noticeDAO.getNoticeList(no); 
	 }
	 
	//공지사항 상세보기
	public Notice getNoticeDetail(Notice no) {
		return noticeDAO.getNoticeDetail(no);
	}
	
	public List<HashMap> npaging(String npage) {
		int pageNum = 1;
		if(npage != null) {
			pageNum = Integer.parseInt(npage);
		}
		int firstRow = pageNum * ncountPerPage-(ncountPerPage-1);
		int endRow = pageNum * ncountPerPage;
		
		return noticeDAO.npagingNotice(firstRow, endRow);
	}
	//notice list countPaging
	public int ngetTotalCount2() {
		ntotalRecCount=noticeDAO.ngetTotalCount();
		/*
		 * 전체 레코드 수	-	페이지 수
		 * 		9				3
		 * 		10				4
		 * 		11				4
		 * 		12				4
		 * 		13				5
		 * */
		if(ntotalRecCount%ncountPerPage>0) {
			npageTotalCount = (ntotalRecCount/ncountPerPage) + 1;
		}
		else {
			npageTotalCount = (ntotalRecCount/ncountPerPage);
		}
		//pageTotalCount = (totalRecCount / countPerPage-1)/countPerPage;
		return npageTotalCount;
	}
	
}
