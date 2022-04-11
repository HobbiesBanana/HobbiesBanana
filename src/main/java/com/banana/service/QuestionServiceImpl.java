package com.banana.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.banana.dao.QuestionDAOImpl;
import com.banana.domain.Question;

@Service("questionService")
public class QuestionServiceImpl implements QuestionService {

	@Autowired
	private QuestionDAOImpl questionDAO;

	private int qtotalRecCount; // 전체 레코드 수
	private int qpageTotalCount; // 전체 페이지 수
	private int qcountPerPage = 10; // 한페이지당 레코드 수

	// qna list paging
	public List<HashMap> qpagingQna(String qpage, HashMap map) {
		int pageNum = 1;
		if (qpage != null) {
			pageNum = Integer.parseInt(qpage);
		}
		int firstRow = pageNum * qcountPerPage - (qcountPerPage - 1);
		int endRow = pageNum * qcountPerPage;

		return questionDAO.qpagingQna(firstRow, endRow, map);
	}

	// qna list countPaging
	public int qgetTotalCount(HashMap map) {
		qtotalRecCount = questionDAO.qgetTotalCount(map);
		/*
		 * 전체 레코드 수 - 페이지 수 9 3 10 4 11 4 12 4 13 5
		 */
		if (qtotalRecCount % qcountPerPage > 0) {
			qpageTotalCount = (qtotalRecCount / qcountPerPage) + 1;
		} else {
			qpageTotalCount = (qtotalRecCount / qcountPerPage);
		}
		// pageTotalCount = (totalRecCount/countPerPage-1)/countPerPage;
		return qpageTotalCount;
	}

	// qna 리스트 출력
	public List<HashMap> getQuestionList(Question que) {
		return questionDAO.getQuestionList(que);
	}

	// qna 상세보기
	public HashMap getQuestionDetail(Question que) {
		return questionDAO.getQuestionDetail(que);
	}

	// qna 글쓰기
	public void insertQuestion(Question que) {
		questionDAO.insertQuestion(que);
	}

	// qna 삭제하기
	public void deleteQuestion(Question que) {
		questionDAO.deleteQuestion(que);
	}

	// qna 수정하기전 값 가져오기
	public Question getQnaDetailSelect(Question que) {
		return questionDAO.getQnaDetailSelect(que);
	}

	// qna 수정하기
	public void updateQuestion(Question que) {
		questionDAO.updateQuestion(que);
	}

	public List<HashMap> qpaging(String qpage) {
		int pageNum = 1;
		if (qpage != null) {
			pageNum = Integer.parseInt(qpage);
		}
		int firstRow = pageNum * qcountPerPage - (qcountPerPage - 1);
		int endRow = pageNum * qcountPerPage;

		return questionDAO.qpaging(firstRow, endRow);
	}

	// qna list countPaging
	public int qgetTotalCount2() {
		qtotalRecCount = questionDAO.qgetTotalCount2();
		/*
		 * 전체 레코드 수 - 페이지 수 9 3 10 4 11 4 12 4 13 5
		 */
		if (qtotalRecCount % qcountPerPage > 0) {
			qpageTotalCount = (qtotalRecCount / qcountPerPage) + 1;
		} else {
			qpageTotalCount = (qtotalRecCount / qcountPerPage);
		}
		// pageTotalCount = (totalRecCount/countPerPage-1)/countPerPage;
		return qpageTotalCount;
	}


}
