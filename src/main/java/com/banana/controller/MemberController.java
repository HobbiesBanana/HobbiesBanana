package com.banana.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.banana.domain.Member;
import com.banana.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/{step}.do")
	public String viewPage(@PathVariable String step) {
		return step;
	}
	
	@RequestMapping("saveMember.do")
	public String insertMember(Member m) throws IOException {
		memberService.insertMember(m);
		return "loginform";
	}
	@RequestMapping(value="idcheck.do",
			produces="application/text;charset=utf-8")
	@ResponseBody
	public String idcheck(Member m) {
		
		String result = "사용가능한 Email입니다.";
		
		Member remem = memberService.idCheck_Login(m);
		if(remem != null) {
			result = "중복된 Email이 있습니다.";
		}
		
		return result;
	}
	
	@RequestMapping("logincheck.do")
	public ModelAndView logincheck(@ModelAttribute Member m, HttpSession session) {
		
		Member result = memberService.loginCheck(m, session);
		
		ModelAndView mav = new ModelAndView();
		
		if(result != null) {	// 로그인 성공 시
			if(result.getAuthority() == 1)
				mav.setViewName("main"); 	// 일반 사용자 로그인 시
			else {
				mav.setViewName("admin"); 	// 관리자 로그인 시
			}
		}else {		//로그인 실패 시
			mav.setViewName("loginform"); //뷰 이름
			mav.addObject("message", "error");
		}
		
		return mav;
	}
	
	@RequestMapping("logout.do")
	public ModelAndView logout(HttpSession session, ModelAndView mav) {
		memberService.logout(session);
		mav.setViewName("loginform");
		mav.addObject("message", "logout");
		return mav;
	}
}
