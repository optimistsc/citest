package com.kshop.util;


public class SalePageNavi {
	
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

	public SalePageNavi(int totalArticle, int currentPage){
		this.totalArticle = totalArticle;
		this.currentPage = currentPage;
		makePage(totalArticle, currentPage);
	}

	public void makePage(int totalArticle, int currentPage){
		
		// 전체 페이지 수 계산
		totalPage = (totalArticle - 1) / SaleConstant.getListCount() + 1;
		
		// 현재 페이지번호들의 맨 처음 계산
		firstPage = ((currentPage - 1) / SaleConstant.getPageCount()) * SaleConstant.getPageCount() + 1;
		
		// 현재 페이지번호들의 맨 끝 : 이번 페이지가 마지막 페이지라면 마지막페이지
		endPage = (firstPage + SaleConstant.getPageCount()) > totalPage ? totalPage : (firstPage + SaleConstant.getPageCount() - 1);
		
		StringBuffer sb = new StringBuffer();
		
		// 테이블에 테두리가 없도록 강제 적용
	
		sb.append("<ul class='pagination'>");
		
		// 처음은 무조건 1페이지로 이동
		sb.append("<li><a href='javascript:goPage(1)'><<</a></li>");
		
		// 맨 처음 페이지 번호 리스트가 아닐경우 이전 버튼 추가
		if(firstPage!=1){
			sb.append("<li><a href='javascript:goPage(" + (firstPage - SaleConstant.getPageCount()) + ")'>Previous</a></li>");
		}
		
		// 페이지번호 생성 - 현재 페이지번호는 뚜렷하고 클릭안되게
		for(int i=firstPage;i<endPage+1;i++){
			if(currentPage==i) {			
				sb.append("<li class='active'><span>" + i + "<span class='sr-only'>(current)</span></span></li>");
			} else {
				sb.append("<li><a href='javascript:goPage(" + i + ")'>" + i + "</a></li>");
			}
			
			sb.append("</a></li>");
		}
		
		// 마지막 페이지 번호 리스트가 아닐때만 다음 버튼 추가
		if(totalPage>endPage) {
			sb.append("<li><a href='javascript:goPage(" + (endPage + SaleConstant.getPageCount()) + ")'>Next</a></li>");
		}
		
		// 마지막 페이지가 아닐 경우만 끝 버튼 추가
		if(currentPage!=totalPage) {
			sb.append("<li><a href='javascript:goPage(" + totalPage + ")'>>></a></li>");
		}
		
		sb.append("</ul>");
		
		navigator = sb.toString();
	}

}