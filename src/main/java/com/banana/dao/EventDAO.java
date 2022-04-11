package com.banana.dao;

import java.util.List;

import com.banana.domain.Event;

public interface EventDAO {

	//이벤트페이지 목록 조회
	public List<Event> event(Event ev);
	
	//이벤트 페이지 상세페이지 보기
	public Event eventviewSet(Event ev);
}
