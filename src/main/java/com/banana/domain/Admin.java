package com.banana.domain;

public class Admin {
	private int adminId;
	private String email;
	private String password;
	private int level;
	private String joinDate;
	
	
	public Admin() {
	}


	public Admin(int adminId, String email, String password, int level, String joinDate) {
		this.adminId = adminId;
		this.email = email;
		this.password = password;
		this.level = level;
		this.joinDate = joinDate;
	}


	public int getAdminId() {
		return adminId;
	}


	public void setAdminId(int adminId) {
		this.adminId = adminId;
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


	public int getLevel() {
		return level;
	}


	public void setLevel(int level) {
		this.level = level;
	}


	public String getJoinDate() {
		return joinDate;
	}


	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}
	
}
