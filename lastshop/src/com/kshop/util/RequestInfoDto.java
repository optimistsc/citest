package com.kshop.util;


//�׻� ������ٳ�� �Ǵ� ������(��������ȣ, �˻���, �˻�Ű ���)
public class RequestInfoDto {
	
	String word;
	String key;
	int pg;
	int currentPage;
	int lpg; //���������� �Խù� ��
	
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
