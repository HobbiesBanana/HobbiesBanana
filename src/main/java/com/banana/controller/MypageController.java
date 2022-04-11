package com.banana.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.banana.domain.Apply;
import com.banana.domain.Host;
import com.banana.domain.Meeting;
import com.banana.domain.Member;
import com.banana.domain.Wishlist;
import com.banana.service.MypageService;

@Controller
public class MypageController {

	@Autowired
	private MypageService mypageService;
	
	//마이페이지 메인 페이지
	@RequestMapping("mypagemain.do")
	public String mypagemain(Host h, Model md) {
		Host host = mypageService.selecthostid(h);
		md.addAttribute("host",host);
		return "mypagemain";
	}
	
	
	//<취미 조회>
    //등록 취미 조회하기
	@RequestMapping("my1reghob.do")
	public String mypageform(Host h, Model md) {
		List<HashMap> list = mypageService.selectreghob(h);
		md.addAttribute("selectreghob", list);
		Host host = mypageService.selecthostid(h);
		md.addAttribute("host",host);
		return "my1reghob";
	}
	//등록 취미 수정하기(조회)
	@RequestMapping("modifyreghob.do")
	public String viewmodreghob(Meeting mt, Model md, Host ho) {
		HashMap h = mypageService.viewmodreghob(mt);
		md.addAttribute("viewmodreghob", h);
		Host host = mypageService.selecthostid(ho);
		md.addAttribute("host",host);
		return "modifyreghob";
	}
	//등록 취미 수정하기
	@RequestMapping("modifyhob.do")
	public String modifyreghob(Meeting mt, Model md, HttpSession session) {
		mypageService.modifyreghob(mt);
		return "redirect:my1reghob.do?hostId="+ session.getAttribute("memberId");
	}
	//등록 취미 삭제하기
	@RequestMapping("deletereghob.do")
	public String deletereghob(Meeting mt, HttpSession session) {
		mypageService.deletereghob(mt);
		return "redirect:my1reghob.do?hostId="+session.getAttribute("memberId");
	}
	
	//<신청 취미>
	//신청 취미 조회하기
	@RequestMapping("my1reqhob.do")
	public String mypageform2(Member m, Model md, Host h) {
		List<HashMap> list = mypageService.selectreqhob(m);
		md.addAttribute("selectreqhob", list);
		Host host = mypageService.selecthostid(h);
		md.addAttribute("host",host);
		return "my1reqhob";
	}
	//신청 취미 삭제하기
	@RequestMapping("deletereqhob.do")
	public String deletereqhob(Apply a, HttpSession session) {
		mypageService.deletereqhob(a);
		return "redirect:my1reqhob.do?memberId="+session.getAttribute("memberId");
	}
	
	//<즐겨찾기>
	//취미 즐겨찾기
	@RequestMapping("my1bookmark.do")
	public void selectbookmark(Member m, Model md, Host h) {
		List<HashMap> list = mypageService.selectwishlist(m);
		md.addAttribute("selectwishlist", list);
		Host host = mypageService.selecthostid(h);
		md.addAttribute("host",host);
	}
	//취미 즐겨찾기 삭제
	@RequestMapping("deletewishlist.do")
	public String deletewishlist(Wishlist w, HttpSession session) {
		mypageService.deletewishlist(w);
		return "redirect:my1bookmark.do?memberId="+session.getAttribute("memberId");
	}
	
	//<호스트>
	//호스트 되기 약관페이지 이동
	@RequestMapping("my2hostagree.do")
	public String my2hostagree(Host h, Model md, HttpSession session) {
		Host host = mypageService.selecthostid(h);
		md.addAttribute("host",host);
		return "my2hostagree";
	}
	//호스트 등록하기 페이지
	@RequestMapping("hostprofileEnroll.do")
	public String hostprofileEnroll(Host h, Model md) {
		Host host = mypageService.selecthostid(h);
		md.addAttribute("host",host);
		return "hostprofileEnroll";
	}
	//호스트 프로필 등록
	@RequestMapping("hostprofileinsert.do")
	public String inserthostprofile(Host h, HttpSession session) {
		mypageService.inserthostprofile(h);
		Host host = mypageService.selecthostid(h);
		return "redirect:my2hostprofile.do?hostId="+host.getHostId();
	}
	//호스트 프로필 보기
	@RequestMapping("my2hostprofile.do")
	public void selecthostprofile(Host h, Model md) {
		Host ho = mypageService.selecthostprofile(h);
		md.addAttribute("selecthostprofile", ho);
		Host host = mypageService.selecthostid(h);
		md.addAttribute("host",host);
	}
	//호스트 프로필 수정
	@RequestMapping("hostprofileupdate.do")
	public String updatehostprofile(Host h, HttpSession session) {
		mypageService.updatehostprofile(h);
	 	return "redirect:mypagemain.do?memberId="+ session.getAttribute("memberId");
	 }
	//게스트 관리 페이지 이동
	@RequestMapping("my2guestagree.do")
	public String guestagreepage(Model md, Host h) {
		List<HashMap> list = mypageService.selectguest(h);
		md.addAttribute("guest", list);
		Host host = mypageService.selecthostid(h);
		md.addAttribute("host",host);
		return "my2guestagree";
	}
	//게스트 수락
	@RequestMapping("guestagree.do")
	public String guestagree(Model md, Apply a, Host h) {
		mypageService.guestagree(a);
		Host host = mypageService.selecthostid(h);
		return "redirect:my2guestagree.do?hostId="+host.getHostId();
	}
	
	//<개인정보>
	//개인정보 프로필 보기
	@RequestMapping("my3privacy.do")
	public void selectmyprofile(Member m, Model md, Host h) {
		Member me = mypageService.selectmyprofile(m);
		md.addAttribute("selectmyprofile", me);
		Host host = mypageService.selecthostid(h);
		md.addAttribute("host",host);
	}
	//개인정보 수정창 넘어가기
	@RequestMapping("modifyprivacy.do")
	public String selectmodprivacy(Member m, Model md, Host h) {
		Member me = mypageService.selectmyprofile(m);
		md.addAttribute("selectmyprofile", me);
		Host host = mypageService.selecthostid(h);
		md.addAttribute("host",host);
		return"modifyprivacy";
	}
	//개인정보 프로필 수정
	@RequestMapping("updateprivacy.do")
	public String updatemyprofile(Member m, HttpSession session) {
		mypageService.updatemyprofile(m);
	 	return "redirect:my3privacy.do?memberId="+session.getAttribute("memberId");
	 }
	//탈퇴하기 페이지 넘어가기
	@RequestMapping("my3drop.do")
	public void  deletepage(Host h, Model md) {
		Host host = mypageService.selecthostid(h);
	    md.addAttribute("host",host);
	}
	//탈퇴하기
	@RequestMapping("deleteaccount.do")
	public ModelAndView deleteaccount(@ModelAttribute Member m, Model md, Host h) {
	      
	   Member result = mypageService.selectmember(m);
	      
	   ModelAndView mav = new ModelAndView();
	      
	   if(result != null) {   // 탈퇴 성공 시
	      mypageService.deleteaccount(m);
	      mav.setViewName("main-real");	//뷰 이름
	   }else {      //탈퇴 실패 시
	      mav.setViewName("my3drop"); //뷰 이름
	      mav.addObject("message", "error");
	   }
	      
	   return mav;
	}
	
}