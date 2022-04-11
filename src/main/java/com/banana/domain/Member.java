package com.banana.domain;

import java.io.File;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class Member {
	
	private int memberId;
	private String email;
	private String password;
	private String name;
	private String gender;
	private String age;
	private String tel;
	private String joinDate;
	private String lastConDate;
	private String profileImg;
	private String realImg;
	private int authority;
	
	MultipartFile file;
	
	//getter, setter
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
		
		// 파일 업로드 작업
		if(!file.isEmpty()) {
			this.profileImg = file.getOriginalFilename();
			
			// 실제 저장되는 파일명 만들기
			UUID uuid = UUID.randomUUID();
			realImg = uuid.toString() + "" + profileImg;
			
			//저장 : file - 자바에서 파일과 디렉토리를 생성, 삭제, 관리하는 클래스
			File f = new File("C:\\spring\\webwork\\teamjoin\\src\\main\\webapp\\resources\\memberimages\\" + realImg);
			try {
				file.transferTo(f);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
	public int getMemberId() {
		return memberId;
	}
	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}
	public String getLastConDate() {
		return lastConDate;
	}
	public void setLastConDate(String lastConDate) {
		this.lastConDate = lastConDate;
	}
	public String getProfileImg() {
		return profileImg;
	}
	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}
	public String getRealImg() {
		return realImg;
	}
	public void setRealImg(String realImg) {
		this.realImg = realImg;
	}
	public int getAuthority() {
		return authority;
	}
	public void setAuthority(int authority) {
		this.authority = authority;
	}
	
	
}
