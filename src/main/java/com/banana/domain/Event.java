package com.banana.domain;

import java.io.File;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class Event {
	private int eventId;
	private String title;
	private String content;
	private String eventDateStart;
	private String eventDateEnd;
	private int peopleCount;
	private String link;
	private String eventImg;
	private String eventRealImg;
	
	MultipartFile file;
	
	//getter, setter
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
		
		// 파일 업로드 작업
		if(!file.isEmpty()) {
			this.eventImg = file.getOriginalFilename();
			
			// 실제 저장되는 파일명 만들기
			UUID uuid = UUID.randomUUID();
			eventRealImg = uuid.toString() + "" + eventImg;
			
			//저장 : file - 자바에서 파일과 디렉토리를 생성, 삭제, 관리하는 클래스
			File f = new File("C:\\spring\\webwork\\teamjoin\\src\\main\\webapp\\resources\\eventimages\\" + eventRealImg);
			try {
				file.transferTo(f);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	public Event() {
	}
	public Event(int eventId, String title, String content, String eventDateStart, String eventDateEnd, int peopleCount,
			String link, String eventImg, String eventRealImg, MultipartFile file) {

		this.eventId = eventId;
		this.title = title;
		this.content = content;
		this.eventDateStart = eventDateStart;
		this.eventDateEnd = eventDateEnd;
		this.peopleCount = peopleCount;
		this.link = link;
		this.eventImg = eventImg;
		this.eventRealImg = eventRealImg;
		this.file = file;
	}
	public int getEventId() {
		return eventId;
	}
	public void setEventId(int eventId) {
		this.eventId = eventId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getEventDateStart() {
		return eventDateStart;
	}
	public void setEventDateStart(String eventDateStart) {
		this.eventDateStart = eventDateStart;
	}
	public String getEventDateEnd() {
		return eventDateEnd;
	}
	public void setEventDateEnd(String eventDateEnd) {
		this.eventDateEnd = eventDateEnd;
	}
	public int getPeopleCount() {
		return peopleCount;
	}
	public void setPeopleCount(int peopleCount) {
		this.peopleCount = peopleCount;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public String getEventImg() {
		return eventImg;
	}
	public void setEventImg(String eventImg) {
		this.eventImg = eventImg;
	}
	public String getEventRealImg() {
		return eventRealImg;
	}
	public void setEventRealImg(String eventRealImg) {
		this.eventRealImg = eventRealImg;
	}

	
	
	
}