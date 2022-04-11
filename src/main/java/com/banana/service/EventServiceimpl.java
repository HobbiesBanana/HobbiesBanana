package com.banana.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.banana.dao.EventDAOImpl;
import com.banana.domain.Event;


@Service("EventService")
public class EventServiceimpl implements EventService{

	@Autowired
	private EventDAOImpl EventDAO;
	
	//이벤트 페이지 목록 조회
	public List<Event> event(Event ev){
		return EventDAO.event(ev);
	}
	
	
	//이벤트 페이지 상세 보기
	public Event eventviewSet(Event ev) {
		return EventDAO.eventviewSet(ev);
	}
}
