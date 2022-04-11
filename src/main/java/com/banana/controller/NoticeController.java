package com.banana.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.banana.domain.Notice;
import com.banana.domain.Question;
import com.banana.service.NoticeService;
import com.banana.service.QuestionService;

@Controller
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	@Autowired
	private QuestionService questionService;

	/*
	  @RequestMapping("qnalist.do") 
	  public String getNoticeList(Notice no, Model m,Question que) { 
	  // 공지사항 리스트 
	  List<Notice> list = noticeService.getNoticeList(no); 
	  m.addAttribute("notice", list);
	  // 질문응답 리스트
	  List<HashMap> list1 = questionService.getQuestionList(que);
	  m.addAttribute("question", list1);
	 
	  return "qnalist"; }
	 */

	//qna, 공지사항 상세보기 
	@RequestMapping("questiondetail.do")
	public String getQuestionDetail(Question que, Model m) {
		//qna 상세보기
		HashMap list = questionService.getQuestionDetail(que);
		m.addAttribute("question", list);
		return "questiondetail";
	}
	//공지사항 상세보기
	@RequestMapping("noticedetail.do")
	public String getNoticeDetail(Notice no, Model m) {
		Notice notice = noticeService.getNoticeDetail(no);
		m.addAttribute("notice", notice);
		return "noticedetail";
	}
	//qna 글쓰기
	@RequestMapping("insertquestion.do")
	public String insertQuestion(Question que) {
		questionService.insertQuestion(que);
		return "redirect:finallist.do?qpage=1&npage=1";
	}
	
	//qna 삭제하기
	@RequestMapping("deletequestion.do")
	public String deleteQuestion(Question que) {
		questionService.deleteQuestion(que);
		return "redirect:qnalist.do?qpage=1&npage=1";
	}
	
	//qna 수정하기전 값 가져오기
	@RequestMapping("getqnadetailselect.do")
	public String getQnaDetailSelect(Question que, Model m) {
		Question q = questionService.getQnaDetailSelect(que);
		m.addAttribute("question", q);
		return "questionupdate";
	}
	
	//qna 수정하기
	@RequestMapping("updatequestion.do")
	public String updateQuestion(Question que) {
		questionService.updateQuestion(que);
		return "redirect:questiondetail.do?questionId="+que.getQuestionId();	
	}
	
	//qna 리스트 페이징
	@RequestMapping("qnalist.do")
	public String pagingQna(Model m, @RequestParam("qpage") String qpage , @RequestParam("npage") String npage ,String qna_search , String qna_searchkeyword) {
		//q리스트 검색
		HashMap map = new HashMap();
		map.put("qna_search", qna_search);
		map.put("qna_searchkeyword", qna_searchkeyword);
		
		//q리스트 페이징
		List<HashMap> qlist = questionService.qpagingQna(qpage, map);
		m.addAttribute("question",qlist);
		//q페이징 갯수
		int qgetTotalPage = questionService.qgetTotalCount(map);
		m.addAttribute("search", map.get("qna_search"));
		m.addAttribute("keyword", map.get("qna_searchkeyword"));
		m.addAttribute("count1", qgetTotalPage);
		//n리스트 페이징
		List<HashMap> nlist = noticeService.npagingNotice(npage);
		m.addAttribute("notice",nlist);
		//n페이징 갯수
		int ngetTotalPage = noticeService.ngetTotalCount();
		m.addAttribute("count2", ngetTotalPage);
		
		return "qnalist";
	}
	
	@RequestMapping("finallist.do")
	public String pagingQna2(Model m, @RequestParam("qpage") String qpage, @RequestParam("npage") String npage ) {
		//q 페이징
		List<HashMap> qli = questionService.qpaging(qpage);
		m.addAttribute("question" , qli);
		
		//q페이지 갯수
		int qgetTotalPage2 = questionService.qgetTotalCount2();
		m.addAttribute("qcount", qgetTotalPage2);
		
		//n 페이징
		List<HashMap> nli = noticeService.npaging(npage);
		m.addAttribute("notice", nli);
		
		//n페이지 갯수
		int ngetTotalPage2 = noticeService.ngetTotalCount2();
		m.addAttribute("ncount", ngetTotalPage2);
		
		return "qnalist";
	}
	
	
	/*
	//qna 질문응답 검색
	@RequestMapping("qnasearch.do")
	public String qnaSearch(String qna_search, String qna_searchkeyword, Model m) {
		HashMap map = new HashMap();
		map.put("qna_search", qna_search);
		map.put("qna_searchkeyword", qna_searchkeyword);
		
		List<HashMap> list = questionService.qnaSearch(map);
		m.addAttribute("qnaSearch", list);
		return "redirect:qnalist.do?qpage=1&npage=1";
	}
	*/
	
}
