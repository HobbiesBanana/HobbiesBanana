package com.banana.domain;

import java.io.File;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class Host {
	private int hostId;
	private String profileImg;
	private String introduce;
	private int memberId;
	private String profileRealImg;
	
	MultipartFile file;
	
	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
		
		if(!file.isEmpty()) {
			this.profileImg = file.getOriginalFilename();
			
			UUID uuid = UUID.randomUUID();
			profileRealImg = uuid.toString() + "" +profileImg;
			
			File f = new File("C:\\spring\\webwork\\teamjoin\\src\\main\\webapp\\resources\\hostimages\\" + profileRealImg);
			
			try {
				file.transferTo(f);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}

	public int getHostId() {
		return hostId;
	}

	public void setHostId(int hostId) {
		this.hostId = hostId;
	}

	public String getProfileImg() {
		return profileImg;
	}

	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public String getProfileRealImg() {
		return profileRealImg;
	}

	public void setProfileRealImg(String profileRealImg) {
		this.profileRealImg = profileRealImg;
	}
	
	
	
}
