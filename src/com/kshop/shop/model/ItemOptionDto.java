package com.kshop.shop.model;

public class ItemOptionDto extends ItemDto{
	
	private int ref_code;
	
	public int getRef_code() {
		return ref_code;
	}
	public void setRef_code(int ref_code) {
		this.ref_code = ref_code;
	}
	private int opt_code;
	private String item_size;
	private String item_color;
	private int item_ea;
	
	public int getOpt_code() {
		return opt_code;
	}
	public void setOpt_code(int opt_code) {
		this.opt_code = opt_code;
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
