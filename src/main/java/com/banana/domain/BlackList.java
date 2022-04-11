package com.banana.domain;

public class BlackList {

	private int listId;
	private String content;
	private String regDate;
	private String writer;
	private String result;
	private int memberId;
	
	public BlackList() {

	}

	public BlackList(int listId, String content, String regDate, String writer, String result, int memberId) {
		this.listId = listId;
		this.content = content;
		this.regDate = regDate;
		this.writer = writer;
		this.result = result;
		this.memberId = memberId;
	}

	public int getListId() {
		return listId;
	}

	public void setListId(int listId) {
		this.listId = listId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}
	
	
	
}
