package com.kshop.util;


//항상 가지고다녀야 되는 정보들(페이지번호, 검색어, 검색키 등등)
public class RequestInfoDto {
	
	String word;
	String key;
	int pg;
	int currentPage;
	int lpg; //한페이지당 게시물 수
	
	public String getWord() {
		return word;
	}
	public void setWord(String word) {
		this.word = word;
	}
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public int getPg() {
		return pg;
	}
	public void setPg(int pg) {
		this.pg = pg;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getLpg() {
		return lpg;
	}
	public void setLpg(int lpg) {
		this.lpg = lpg;
	}

	
	

}
