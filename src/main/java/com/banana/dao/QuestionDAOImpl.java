package com.banana.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.banana.domain.Question;

@Repository("questionDAO")
public class QuestionDAOImpl implements QuestionDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	//qna 리스트 출력
	public List<HashMap> getQuestionList(Question que) {
		return mybatis.selectList("QuestionDAO.getQuestionList", que);
	}
	//qna 상세보기
	public HashMap getQuestionDetail(Question que) {
		return mybatis.selectOne("QuestionDAO.getQuestionDetail", que);
	}
	//qna 글쓰기
	public void insertQuestion(Question que) {
		mybatis.insert("QuestionDAO.insertQuestion", que);
	}
	//qna 삭제하기
	public void deleteQuestion(Question que) {
		mybatis.delete("QuestionDAO.deleteQuestion", que);
	}
	
	//qna 수정하기전 값 가져오기
	public Question getQnaDetailSelect(Question que) {
		return mybatis.selectOne("QuestionDAO.getQnaDetailSelect", que);
	}
	
	//qna 수정하기
	public void updateQuestion(Question que) {
		 mybatis.update("QuestionDAO.updateQuestion", que);
	}
	
	//qna 리스트 페이징
	public List<HashMap> qpagingQna(int firstRow, int endRow , HashMap map) {
		map.put("firstRow", firstRow);
		map.put("endRow", endRow);

		return mybatis.selectList("QuestionDAO.qpagingQna", map);
	}
	
	//qna 페이징 갯수
	public int qgetTotalCount(HashMap map) {
		return mybatis.selectOne("QuestionDAO.qgetTotalCount", map);
	}
	
	public List<HashMap> qpaging(int firstRow, int endRow) {
		HashMap hash = new HashMap();
		hash.put("firstRow", firstRow);
		hash.put("endRow", endRow);
		return mybatis.selectList("QuestionDAO.qpaging", hash);
	}
	
	public int qgetTotalCount2() {
		return mybatis.selectOne("QuestionDAO.qgetTotalCount2");	
	}
}

