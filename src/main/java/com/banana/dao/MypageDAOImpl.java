package com.banana.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.banana.domain.Apply;
import com.banana.domain.Host;
import com.banana.domain.Meeting;
import com.banana.domain.Member;
import com.banana.domain.Wishlist;

@Repository("mypageDAO")
public class MypageDAOImpl implements MypageDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//<취미 조회>
	//<등록 취미>
	//등록 취미 조회
	public List<HashMap> selectreghob(Host h){
		return mybatis.selectList("MypageDAO.selectreghob", h);
	}
	//등록 취미 수정하기(조회)
	public HashMap viewmodreghob(Meeting mt) {
		return mybatis.selectOne("MypageDAO.viewmodreghob", mt);
	}
	
	//등록 취미 수정하기
	public void modifyreghob(Meeting mt) {
		mybatis.update("MypageDAO.modifyreghob", mt);
	}
	
	//등록 취미 삭제하기
	public void deletereghob(Meeting mt) {
		mybatis.delete("MypageDAO.deletereghob", mt);
	}
	
	//<신청 취미>
	//신청 취미 조회
	public List<HashMap> selectreqhob(Member m){
		return mybatis.selectList("MypageDAO.selectreqhob", m);
	}
	//신청 취미 삭제하기
	public void deletereqhob(Apply a) {
		mybatis.delete("MypageDAO.deletereqhob", a);
	}
	
	//<즐겨찾기>
	//취미 즐겨찾기
	public List<HashMap> selectwishlist(Member m) {
		return mybatis.selectList("MypageDAO.selectwishlist", m);
	}
	//취미 즐겨찾기 삭제
	public void deletewishlist(Wishlist w) {
		mybatis.delete("MypageDAO.deletewishlist", w);
	}
	
	//<호스트>
	//호스트 프로필 등록
	public void inserthostprofile(Host h) {
		mybatis.insert("MypageDAO.inserthostprofile", h);
	}
	//호스트 프로필 보기
	public Host selecthostprofile(Host h) {
		return mybatis.selectOne("MypageDAO.selecthostprofile", h);
	}
	//호스트 프로필 수정
	public void updatehostprofile(Host h) {
		mybatis.update("MypageDAO.updatehostprofile", h);
	}
	//게스트 리스트 출력하기
	public List<HashMap> selectguest(Host h){
		return mybatis.selectList("MypageDAO.selectguest", h);
	}
	//게스트 수락하기
	public void guestagree(Apply a) {
		mybatis.update("MypageDAO.guestagree", a);
	}
	//<개인정보>
	//개인정보 프로필 보기
	public Member selectmyprofile(Member m) {
		return mybatis.selectOne("MypageDAO.selectmyprofile", m);
	}
	//개인정보 프로필 수정
	public void updatemyprofile(Member m) {
		mybatis.update("MypageDAO.updatemyprofile", m);
	}
	//회원비밀번호 일치 확인
	public Member selectmember(Member m) {
	   return mybatis.selectOne("MypageDAO.selectmember", m);
	}
	//탈퇴하기
	public void deleteaccount(Member m) {
	   mybatis.delete("MypageDAO.deleteaccount", m);
	}
	//호스트 아이디 불러오기
	public Host selecthostid(Host h) {
		return mybatis.selectOne("MypageDAO.selecthostid", h);
	}
}
