package com.banana.dao;

import java.util.HashMap;
import java.util.List;

import com.banana.domain.Question;

public interface QuestionDAO {
	
	//qna 리스트 출력
	public List<HashMap> getQuestionList(Question que);
	
	//qna 상세보기
	public HashMap getQuestionDetail(Question que);

	//qna 글쓰기
	public void insertQuestion(Question que);
	
	//qna 삭제하기
	public void deleteQuestion(Question que);
	
	//qna 수정하기전 값 가져오기
	public Question getQnaDetailSelect(Question que);
	
	//qna 수정하기
	public void updateQuestion(Question que);
	
	//qna 전체방 출력 페이징
	public List<HashMap> qpagingQna(int firstRow,int endRow , HashMap map);
	
	//qna 페이징 갯수
	public int qgetTotalCount(HashMap map);
	
	public List<HashMap> qpaging(int firstRow,int endRow);
	
	public int qgetTotalCount2();
	
}
