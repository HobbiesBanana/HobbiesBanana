package com.banana.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.banana.domain.Event;

@Repository("EventDAO")
public class EventDAOImpl implements EventDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	//이벤트 페이지 목록 조회
	public List<Event> event(Event ev){
		return mybatis.selectList("EventDAO.event", ev);
	}
	
	//이벤트 페이지 상세 조회
	public Event eventviewSet(Event ev) {
		return mybatis.selectOne("EventDAO.eventviewSet", ev);
	}
}
