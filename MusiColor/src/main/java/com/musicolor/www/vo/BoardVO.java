package com.musicolor.www.vo;

import org.springframework.web.multipart.MultipartFile;

public class BoardVO {
	//board
	private int b_no;
	private int b_mno;
	private int b_vno;
	private int b_sno;
	private int b_yno;
	private int b_ano;
	private int b_like;
	private int b_emotion;
	private char b_isshow;
	private String b_date;
	private String b_body;
	
	private MultipartFile sFile;
	private MultipartFile[] file;
	
	
	 
	//vocal 
	private String v_name;
	
	//song
	private String s_title;
	
	//youtube
	private String y_link;
	private char y_ismain;
	
	 
	
	
	public String getB_body() {
		return b_body;
	}
	public void setB_body(String b_body) {
		this.b_body = b_body;
	}
	public MultipartFile getsFile() {
		return sFile;
	}
	public void setsFile(MultipartFile sFile) {
		this.sFile = sFile;
	}
	public MultipartFile[] getFile() {
		return file;
	}
	public void setFile(MultipartFile[] file) {
		this.file = file;
	}
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
	public int getB_mno() {
		return b_mno;
	}
	public void setB_mno(int b_mno) {
		this.b_mno = b_mno;
	}
	public int getB_vno() {
		return b_vno;
	}
	public void setB_vno(int b_vno) {
		this.b_vno = b_vno;
	}
	public int getB_sno() {
		return b_sno;
	}
	public void setB_sno(int b_sno) {
		this.b_sno = b_sno;
	}
	public int getB_yno() {
		return b_yno;
	}
	public void setB_yno(int b_yno) {
		this.b_yno = b_yno;
	}
	public int getB_ano() {
		return b_ano;
	}
	public void setB_ano(int b_ano) {
		this.b_ano = b_ano;
	}
	public int getB_like() {
		return b_like;
	}
	public void setB_like(int b_like) {
		this.b_like = b_like;
	}
	public int getB_emotion() {
		return b_emotion;
	}
	public void setB_emotion(int b_emotion) {
		this.b_emotion = b_emotion;
	}
	public char getB_isshow() {
		return b_isshow;
	}
	public void setB_isshow(char b_isshow) {
		this.b_isshow = b_isshow;
	}
	public String getB_date() {
		return b_date;
	}
	public void setB_date(String b_date) {
		this.b_date = b_date;
	}
	public String getV_name() {
		return v_name;
	}
	public void setV_name(String v_name) {
		this.v_name = v_name;
	}
	public String getS_title() {
		return s_title;
	}
	public void setS_title(String s_title) {
		this.s_title = s_title;
	}
	public String getY_link() {
		return y_link;
	}
	public void setY_link(String y_link) {
		this.y_link = y_link;
	}
	public char getY_ismain() {
		return y_ismain;
	}
	public void setY_ismain(char y_ismain) {
		this.y_ismain = y_ismain;
	}
	
	
}