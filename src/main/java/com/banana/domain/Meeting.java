package com.banana.domain;

import java.io.File;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class Meeting {
	private int meetingId;
	private String title;
	private String firstImg;
	private String firstRealImg;
	private String secondImg;
	private String secondRealImg;
	private String thirdImg;
	private String thirdRealImg;
	private String content;
	private String location;
	private String detailLocation;
	private String meetingDate;
	private String meetingTime;
	private int hostId;
	private int memberCount;
	private String code;
	private String regDate;
	
	MultipartFile firstFile;
	MultipartFile secondFile;
	MultipartFile thirdFile;
	
	//getter, setter
	public MultipartFile getFirstFile() {
		return firstFile;
	}
	public void setFirstFile(MultipartFile firstFile) {
		this.firstFile = firstFile;
		
		// 파일 업로드 작업
		if(!firstFile.isEmpty()) {
			this.firstImg = firstFile.getOriginalFilename();
			
			// 실제 저장되는 파일명 만들기
			UUID uuid = UUID.randomUUID();
			firstRealImg = uuid.toString() + "" + firstImg;
			
			//저장 : file - 자바에서 파일과 디렉토리를 생성, 삭제, 관리하는 클래스
			File f = new File("C:\\spring\\webwork\\teamjoin\\src\\main\\webapp\\resources\\meetingImg\\" + firstRealImg);
			try {
				firstFile.transferTo(f);
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		}
	}
	public MultipartFile getSecondFile() {
		return secondFile;
	}
	public void setSecondFile(MultipartFile secondFile) {
		this.secondFile = secondFile;
		
		// 파일 업로드 작업
		if(!secondFile.isEmpty()) {
			this.secondImg = secondFile.getOriginalFilename();
			
			// 실제 저장되는 파일명 만들기
			UUID uuid = UUID.randomUUID();
			secondRealImg = uuid.toString() + "" + secondImg;
			
			//저장 : file - 자바에서 파일과 디렉토리를 생성, 삭제, 관리하는 클래스
			File f = new File("C:\\spring\\webwork\\teamjoin\\src\\main\\webapp\\resources\\meetingImg\\" + secondRealImg);
			try {
				secondFile.transferTo(f);
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		}
	}
	public MultipartFile getThirdFile() {
		return thirdFile;
	}
	public void setThirdFile(MultipartFile thirdFile) {
		this.thirdFile = thirdFile;
		
		// 파일 업로드 작업
		if(!thirdFile.isEmpty()) {
			this.thirdImg = thirdFile.getOriginalFilename();
			
			// 실제 저장되는 파일명 만들기
			UUID uuid = UUID.randomUUID();
			thirdRealImg = uuid.toString() + "" + thirdImg;
			
			//저장 : file - 자바에서 파일과 디렉토리를 생성, 삭제, 관리하는 클래스
			File f = new File("C:\\spring\\webwork\\teamjoin\\src\\main\\webapp\\resources\\meetingImg\\" + thirdRealImg);
			try {
				thirdFile.transferTo(f);
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		}
	}
	
	public int getMeetingId() {
		return meetingId;
	}
	public void setMeetingId(int meetingId) {
		this.meetingId = meetingId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getFirstImg() {
		return firstImg;
	}
	public void setFirstImg(String firstImg) {
		this.firstImg = firstImg;
	}
	public String getFirstRealImg() {
		return firstRealImg;
	}
	public void setFirstRealImg(String firstRealImg) {
		this.firstRealImg = firstRealImg;
	}
	public String getScondImg() {
		return secondImg;
	}
	public void setSecondImg(String secondImg) {
		this.secondImg = secondImg;
	}
	public String getSecondRealImg() {
		return secondRealImg;
	}
	public void setSecondRealImg(String secondRealImg) {
		this.secondRealImg = secondRealImg;
	}
	public String getThirdImg() {
		return thirdImg;
	}
	public void setThirdImg(String thirdImg) {
		this.thirdImg = thirdImg;
	}
	public String getThirdRealImg() {
		return thirdRealImg;
	}
	public void setThirdRealImg(String thirdRealImg) {
		this.thirdRealImg = thirdRealImg;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getDetailLocation() {
		return detailLocation;
	}
	public void setDetailLocation(String detailLocation) {
		this.detailLocation = detailLocation;
	}
	
	
	public String getMeetingDate() {
		return meetingDate;
	}
	public void setMeetingDate(String meetingDate) {
		this.meetingDate = meetingDate;
	}
	public String getMeetingTime() {
		return meetingTime;
	}
	public void setMeetingTime(String meetingTime) {
		this.meetingTime = meetingTime;
	}
	public int getHostId() {
		return hostId;
	}
	public void setHostId(int hostId) {
		this.hostId = hostId;
	}
	public int getMemberCount() {
		return memberCount;
	}
	public void setMemberCount(int memberCount) {
		this.memberCount = memberCount;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	
	
	
	
}
