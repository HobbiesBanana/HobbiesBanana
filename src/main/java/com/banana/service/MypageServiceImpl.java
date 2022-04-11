package com.banana.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.banana.dao.MypageDAOImpl;
import com.banana.domain.Apply;
import com.banana.domain.Host;
import com.banana.domain.Meeting;
import com.banana.domain.Member;
import com.banana.domain.Wishlist;

@Service("mypageService")
public class MypageServiceImpl implements MypageService{
 
	@Autowired
	private MypageDAOImpl mypageDAO;
	
	//<취미 조회 관리>
	//<등록 취미>
	//등록 취미 보기
	public List<HashMap> selectreghob(Host h){
		return mypageDAO.selectreghob(h);
	}
	//등록 취미 수정하기(조회)
	public HashMap viewmodreghob(Meeting mt) {
		return mypageDAO.viewmodreghob(mt);
	}
	//등록 취미 수정하기
	public void modifyreghob(Meeting mt) {
		mypageDAO.modifyreghob(mt);
	}
	//등록 취미 삭제
	public void deletereghob(Meeting mt) {
		mypageDAO.deletereghob(mt);
	}
	
	//<신청 취미>
	// 신청 취미 보기
	public List<HashMap> selectreqhob(Member m){
		return mypageDAO.selectreqhob(m);
	}
	//신청 취미 삭제
	public void deletereqhob(Apply a) {
		mypageDAO.deletereqhob(a);
	}
	
	//<즐겨찾기>
	//취미 즐겨찾기
	public List<HashMap> selectwishlist(Member m){
		return mypageDAO.selectwishlist(m);
	}
	//취미 즐겨찾기 삭제
	public void deletewishlist(Wishlist w) {
		mypageDAO.deletewishlist(w);
	}
	
	//<호스트>
	//호스트 프로필 등록
	public void inserthostprofile(Host h) {
		mypageDAO.inserthostprofile(h);
	}
	//호스트 프로필 보기
	public Host selecthostprofile(Host h) {
		return mypageDAO.selecthostprofile(h);
	}
	//호스트 프로필 수정
	public void updatehostprofile(Host h) {
		mypageDAO.updatehostprofile(h);
	}
	//게스트 리스트 출력하기
	public List<HashMap> selectguest(Host h){
		return mypageDAO.selectguest(h);
	}
	//게스트 수락하기
	public void guestagree(Apply a) {
		mypageDAO.guestagree(a);
	}
	
	//<개인정보>
	//개인정보 프로필 보기
	public Member selectmyprofile(Member m) {
		return mypageDAO.selectmyprofile(m);
	}
	//개인정보 프로필 수정
	public void updatemyprofile(Member m) {
		mypageDAO.updatemyprofile(m);
	}
	//탈퇴하기
	public void deleteaccount(Member m, HttpSession session) {
		mypageDAO.selectmyprofile(m);
	}
	//회원비밀번호 일치 확인
	public Member selectmember(Member m) {
	   return mypageDAO.selectmember(m);
	}
	//탈퇴하기
	public void deleteaccount(Member m) {
	   mypageDAO.deleteaccount(m);
	}
	//호스트 아이디 불러오기
	public Host selecthostid(Host h) {
		return mypageDAO.selecthostid(h);
	}
}