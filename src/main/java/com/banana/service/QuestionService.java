package com.banana.service;

import java.util.HashMap;
import java.util.List;

import com.banana.domain.Question;

public interface QuestionService {
	//qna 리스트 출력
	public List<HashMap> getQuestionList(Question que);
	
	//qna 상세보기
	public HashMap getQuestionDetail(Question que);
	
	//qna 글쓰기
	public void insertQuestion(Question que);

	//qna 삭제하기
	public void deleteQuestion(Question que);
	
	//qna 수정하기 전 값 가져오기
	public Question getQnaDetailSelect(Question que);
	
	//qna 수정하기
	public void updateQuestion(Question que);
	
	//qna 페이징 리스트
	public List<HashMap> qpagingQna(String qpage , HashMap map);
	
	//qna 페이징 카운트
	public int qgetTotalCount(HashMap map);
	
	public List<HashMap> qpaging(String qpage);
	
	public int qgetTotalCount2();

}
