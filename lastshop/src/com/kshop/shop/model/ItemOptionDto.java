package com.kshop.shop.model;

public class ItemOptionDto {
	
	private int opt_code;
	private int item_code;
	private String item_size;
	private String item_color;
	private int item_ea;
	
	public int getOpt_code() {
		return opt_code;
	}
	public void setOpt_code(int opt_code) {
		this.opt_code = opt_code;
	}
	public int getItem_code() {
		return item_code;
	}
	public void setItem_code(int item_code) {
		this.item_code = item_code;
	}
	public String getItem_size() {
		return item_size;
	}
	public void setItem_size(String item_size) {
		this.item_size = item_size;
	}
	public String getItem_color() {
		return item_color;
	}
	public void setItem_color(String item_color) {
		this.item_color = item_color;
	}
	public int getItem_ea() {
		return item_ea;
	}
	public void setItem_ea(int item_ea) {
		this.item_ea = item_ea;
	}
	
}
