package com.javalec.ex.dto;

import java.sql.Timestamp;

public class BDto {
	private int bId;
	private String bName;
	private String bTitle;
	private String bContent;
	private Timestamp bDate; // import java.sql.Timestamp;
	private int bHit;
	private int bGroup;
	private int bStep;
	private int bIndent;
	
	//alt shift s 누르고 o 눌러서 생성자 2번 만들기
	//한 번은 모두 선택해서 만들고 한 번은 모두 선택 해제해서 만든다.
	public BDto(int bId, String bName, String bTitle, String bContent, Timestamp bDate, int bHit, int bGroup, int bStep,
			int bIndent) {
		this.bId = bId;
		this.bName = bName;
		this.bTitle = bTitle;
		this.bContent = bContent;
		this.bDate = bDate;
		this.bHit = bHit;
		this.bGroup = bGroup;
		this.bStep = bStep;
		this.bIndent = bIndent;
	}
	public BDto() {
	}
	//Getter Setter를 만든다. alt shift s 누르고 r 키 눌러서 만들기
	public int getbId() {
		return bId;
	}
	public void setbId(int bId) {
		this.bId = bId;
	}
	public String getbName() {
		return bName;
	}
	public void setbName(String bName) {
		this.bName = bName;
	}
	public String getbTitle() {
		return bTitle;
	}
	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}
	public String getbContent() {
		return bContent;
	}
	public void setbContent(String bContent) {
		this.bContent = bContent;
	}
	public Timestamp getbDate() {
		return bDate;
	}
	public void setbDate(Timestamp bDate) {
		this.bDate = bDate;
	}
	public int getbHit() {
		return bHit;
	}
	public void setbHit(int bHit) {
		this.bHit = bHit;
	}
	public int getbGroup() {
		return bGroup;
	}
	public void setbGroup(int bGroup) {
		this.bGroup = bGroup;
	}
	public int getbStep() {
		return bStep;
	}
	public void setbStep(int bStep) {
		this.bStep = bStep;
	}
	public int getbIndent() {
		return bIndent;
	}
	public void setbIndent(int bIndent) {
		this.bIndent = bIndent;
	}
	
	
	
	
}









