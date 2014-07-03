package com.kshop.util;


public class PageNavi {
	
	private int currentPage;
	private int totalArticle;
	private int totalPage;
	private int firstPage;
	private int endPage;
	private String navigator;
	
	public String getNavigator() {
		return navigator;
	}
	public void setNavigator(String navigator) {
		this.navigator = navigator;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getTotalArticle() {
		return totalArticle;
	}
	public void setTotalArticle(int totalArticle) {
		this.totalArticle = totalArticle;
	}

	public PageNavi(int totalArticle, int currentPage){
		this.totalArticle = totalArticle;
		this.currentPage = currentPage;
		makePage(totalArticle, currentPage);
	}

	public void makePage(int totalArticle, int currentPage){
		
		// ��ü ������ �� ���
		totalPage = (totalArticle - 1) / Constant.getListCount() + 1;
		
		// ���� ��������ȣ���� �� ó�� ���
		firstPage = ((currentPage - 1) / Constant.getPageCount()) * Constant.getPageCount() + 1;
		
		// ���� ��������ȣ���� �� �� : �̹� �������� ������ ��������� ������������
		endPage = (firstPage + Constant.getPageCount()) > totalPage ? totalPage : (firstPage + Constant.getPageCount() - 1);
		
		StringBuffer sb = new StringBuffer();
		
		// ���̺� �׵θ��� ������ ���� ����
	
		sb.append("<ul class='pagination'>");
		
		// ó���� ������ 1�������� �̵�
		sb.append("<li><a href='javascript:goPage(1)'><<</a></li>");
		
		// �� ó�� ������ ��ȣ ����Ʈ�� �ƴҰ�� ���� ��ư �߰�
		if(firstPage!=1){
			sb.append("<li><a href='javascript:goPage(" + (firstPage - Constant.getPageCount()) + ")'>Previous</a></li>");
		}
		
		// ��������ȣ ���� - ���� ��������ȣ�� �ѷ��ϰ� Ŭ���ȵǰ�
		for(int i=firstPage;i<endPage+1;i++){
			if(currentPage==i) {			
				sb.append("<li class='active'><span>" + i + "<span class='sr-only'>(current)</span></span></li>");
			} else {
				sb.append("<li><a href='javascript:goPage(" + i + ")'>" + i + "</a></li>");
			}
			
			sb.append("</a></li>");
		}
		
		// ������ ������ ��ȣ ����Ʈ�� �ƴҶ��� ���� ��ư �߰�
		if(totalPage>endPage) {
			sb.append("<li><a href='javascript:goPage(" + (endPage + Constant.getPageCount()) + ")'>Next</a></li>");
		}
		
		// ������ �������� �ƴ� ��츸 �� ��ư �߰�
		if(currentPage!=totalPage) {
			sb.append("<li><a href='javascript:goPage(" + totalPage + ")'>>></a></li>");
		}
		
		sb.append("</ul>");
		
		navigator = sb.toString();
	}

}