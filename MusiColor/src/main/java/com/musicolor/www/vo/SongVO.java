package com.musicolor.www.vo;

import org.springframework.web.multipart.MultipartFile;

public class SongVO { 
	// song 테이블
	private long s_no; // 노래번호
	private int s_vno; // 가수번호
	private String s_title; // 노래제목
	private long s_ano; // 사진번호
	
	// vocal 테이블
	private String v_name; // 가수 이름
	
	// youtube 테이블
	private long y_no; // 유튜브 번호
	private String y_link; // 유튜브 링크
	private int y_mno; // 업로드 회원 번호
	
	// 파일 업로드 관련
	private MultipartFile sFile;
	private MultipartFile[] file;
	
	// 검색 키워드 저장용
	private String keywords;
	
	// 아이디
	private String id;
	
	public long getS_no() {
		return s_no;
	}
	public void setS_no(long s_no) {
		this.s_no = s_no;
	}
	public int getS_vno() {
		return s_vno;
	}
	public void setS_vno(int s_vno) {
		this.s_vno = s_vno;
	}
	public String getS_title() {
		return s_title;
	}
	public void setS_title(String s_title) {
		this.s_title = s_title;
	}
	public long getS_ano() {
		return s_ano;
	}
	public void setS_ano(long s_ano) {
		this.s_ano = s_ano;
	}
	public String getV_name() {
		return v_name;
	}
	public void setV_name(String v_name) {
		this.v_name = v_name;
	}
	public long getY_no() {
		return y_no;
	}
	public void setY_no(long y_no) {
		this.y_no = y_no;
	}
	public String getY_link() {
		return y_link;
	}
	public void setY_link(String y_link) {
		this.y_link = y_link;
	}
	public int getY_mno() {
		return y_mno;
	}
	public void setY_mno(int y_mno) {
		this.y_mno = y_mno;
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
	public String getKeywords() {
		return keywords;
	}
	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
}
