package com.banana.dao;

import java.util.HashMap;
import java.util.List;

import com.banana.domain.Apply;
import com.banana.domain.Host;
import com.banana.domain.Meeting;
import com.banana.domain.Member;
import com.banana.domain.Wishlist;

public interface MypageDAO {
	//<취미 조회>
	//<등록 취미>
	//등록 취미 조회하기
	public List<HashMap> selectreghob(Host h);
	//등록 취미 수정하기(조회)
	public HashMap viewmodreghob(Meeting mt);
	//등록 취미 수정하기
	public void modifyreghob(Meeting mt);
	//등록 취미 삭제하기
	public void deletereghob(Meeting mt);

	//<신청 취미>
	//신청 취미 조회하기
	public List<HashMap> selectreqhob(Member m);
	//신청 취미 삭제하기
	public void deletereqhob(Apply a);
	
	//취미 즐겨찾기
	public List<HashMap> selectwishlist(Member m);
	//취미 삭제하기
	public void deletewishlist(Wishlist w);
	
	//<호스트>
	//호스트 프로필 등록
	public void inserthostprofile(Host h);
	//호스트 프로필 보기
	public Host selecthostprofile(Host h);
	//호스트 프로필 수정
	public void updatehostprofile(Host h);
	//게스트 리스트 출력하기
	public List<HashMap> selectguest(Host h);
	//게스트 수락하기
	public void guestagree(Apply a);
	
	
	//<개인정보>
	//개인정보 프로필 보기
	public Member selectmyprofile(Member m);
	//개인정보 프로필 수정
	public void updatemyprofile(Member m);
	//회원비밀번호 일치 확인
	public Member selectmember(Member m);
	//탈퇴하기
	public void deleteaccount(Member m);
	
	//호스트 아이디 불러오기
	public Host selecthostid(Host h);
}
