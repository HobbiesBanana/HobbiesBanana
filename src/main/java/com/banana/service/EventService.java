package com.banana.service;

import java.util.List;

import com.banana.domain.Event;

public interface EventService {

	//이벤트 페이지 목록 조회
	public List<Event> event(Event ev);
	
	//이벤트 페이지 상세 조회
	public Event eventviewSet(Event ev);
}
