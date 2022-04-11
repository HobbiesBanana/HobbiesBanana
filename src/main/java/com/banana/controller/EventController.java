package com.banana.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import com.banana.domain.Event;
import com.banana.service.EventService;

@Controller
public class EventController {
	
	@Autowired
	private EventService eventService;
	
	//이벤트 페이지 목록 조회
	@RequestMapping("event.do") 
	public String event(Model m, Event ev) {
		List<Event> list = eventService.event(ev);
		m.addAttribute("event",list);
		return "eventmain";
	}

	//이벤트 페이지 상세 페이지
	@RequestMapping("eventviewSet.do")
	public String eventviewSet(Event ev, Model m) {
		m.addAttribute("eventviewSet",eventService.eventviewSet(ev));
		return "eventview";
	}
	
	//이벤트 목록가기
	@RequestMapping("eventlistSet.do")
	public String eventlistSet() {
		return "redirect:event.do";
	}
}
