package com.kshop.shop.model;

import java.util.List;

import org.springframework.orm.ibatis.SqlMapClientTemplate;

public class SaleDao {
	private SqlMapClientTemplate sqlMapClientTemplate;


	public void setSqlMapClientTemplate(SqlMapClientTemplate sqlMapClientTemplate) {
		this.sqlMapClientTemplate = sqlMapClientTemplate;
	}
	public int count1( int category1){
		return (int) sqlMapClientTemplate.queryForObject("count1",category1);
	}
	
	public List<ItemDto> salelist1(int category1){
		return sqlMapClientTemplate.queryForList("salelist1", category1);
	}
	
	public List<ItemDto> salelist2(int category1, int category2){
		
		return sqlMapClientTemplate.queryForList("salelist1", category1);
	}
	
	public int count2( int category1, int category2 ){
		return (int) sqlMapClientTemplate.queryForObject("count1",category1);
	}
	
	public ItemDto select(int itemnum){
		return (ItemDto) sqlMapClientTemplate.queryForObject("select", itemnum);
	}
	
	public List<ItemOptionDto> selectItem(int itemnum){
		return sqlMapClientTemplate.queryForList("selectitem", itemnum);
	}
	
	
}
