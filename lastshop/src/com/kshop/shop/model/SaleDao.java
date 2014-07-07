package com.kshop.shop.model;

import java.util.*;

import org.springframework.orm.ibatis.SqlMapClientTemplate;

import com.kshop.util.Constant;

public class SaleDao {
	private SqlMapClientTemplate sqlMapClientTemplate;


	public void setSqlMapClientTemplate(SqlMapClientTemplate sqlMapClientTemplate) {
		this.sqlMapClientTemplate = sqlMapClientTemplate;
	}
	public int count1( int category1){
		return (int) sqlMapClientTemplate.queryForObject("count1",category1);
	}
	
	public List<ItemDto> best(int category1){
		Map<String, String> map = new HashMap<String, String>();
		map.put("category1", category1+"");
		return sqlMapClientTemplate.queryForList("best", map);
	}
	public List<ItemDto> salelist1(int category1, int pg, int lpg){
		Map<String, String> map = new HashMap<String, String>();
		map.put("category1", category1+"");
		map.put("currentPage", pg+"");
		map.put("lpg", lpg+"");
		return sqlMapClientTemplate.queryForList("salelist1", map);
	}
	
	public List<ItemDto> newsalelist1(int category1, int pg, int lpg){
		Map<String, String> map = new HashMap<String, String>();
		map.put("category1", category1+"");
		map.put("currentPage", pg+"");
		map.put("lpg", lpg+"");
		return sqlMapClientTemplate.queryForList("newsalelist1", map);
	}
	
	public List<ItemDto> lowsalelist1(int category1, int pg, int lpg){
		Map<String, String> map = new HashMap<String, String>();
		map.put("category1", category1+"");
		map.put("currentPage", pg+"");
		map.put("lpg", lpg+"");
		return sqlMapClientTemplate.queryForList("lowsalelist1", map);
	}
	
	public List<ItemDto> highsalelist1(int category1, int pg, int lpg){
		Map<String, String> map = new HashMap<String, String>();
		map.put("category1", category1+"");
		map.put("currentPage", pg+"");
		map.put("lpg", lpg+"");
		return sqlMapClientTemplate.queryForList("highsalelist1", map);
	}
	
	public List<ItemDto> hitsalelist1(int category1, int pg, int lpg){
		Map<String, String> map = new HashMap<String, String>();
		map.put("category1", category1+"");
		map.put("currentPage", pg+"");
		map.put("lpg", lpg+"");
		return sqlMapClientTemplate.queryForList("hitsalelist1", map);
	}
	
	public List<ItemDto> salelist2(int category1, int category2, int pg, int lpg){
		Map<String, String> map = new HashMap<String, String>();
		map.put("category1", category1+"");
		map.put("category2", category2+"");
		map.put("currentPage", pg+"");
		map.put("lpg", lpg+"");
		return sqlMapClientTemplate.queryForList("salelist2", map);
	}
	
	public int count2( int category1, int category2 ){
		Map<String, String> map = new HashMap<String, String>();
		map.put("category1", category1+"");
		map.put("category2", category2+"");
		return (int) sqlMapClientTemplate.queryForObject("count2",map);
	}
	
	public List<ItemDto> newsalelist2(int category1, int category2, int pg, int lpg){
		Map<String, String> map = new HashMap<String, String>();
		map.put("category1", category1+"");
		map.put("category2", category2+"");
		map.put("currentPage", pg+"");
		map.put("lpg", lpg+"");
		return sqlMapClientTemplate.queryForList("newsalelist2", map);
	}
	
	public List<ItemDto> lowsalelist2(int category1, int category2, int pg, int lpg){
		Map<String, String> map = new HashMap<String, String>();
		map.put("category1", category1+"");
		map.put("category2", category2+"");
		map.put("currentPage", pg+"");
		map.put("lpg", lpg+"");
		return sqlMapClientTemplate.queryForList("lowsalelist2", map);
	}
	
	public List<ItemDto> highsalelist2(int category1, int category2, int pg, int lpg){
		Map<String, String> map = new HashMap<String, String>();
		map.put("category1", category1+"");
		map.put("category2", category2+"");
		map.put("currentPage", pg+"");
		map.put("lpg", lpg+"");
		return sqlMapClientTemplate.queryForList("highsalelist2", map);
	}
	
	public List<ItemDto> hitsalelist2(int category1, int category2, int pg, int lpg){
		Map<String, String> map = new HashMap<String, String>();
		map.put("category1", category1+"");
		map.put("category2", category2+"");
		map.put("currentPage", pg+"");
		map.put("lpg", lpg+"");
		return sqlMapClientTemplate.queryForList("hitsalelist2", map);
	}
	
	//카테고리 3
	public List<ItemDto> salelist3(int category1, int category2,int category3, int pg, int lpg){
		Map<String, String> map = new HashMap<String, String>();
		map.put("category1", category1+"");
		map.put("category2", category2+"");
		map.put("category3", category3+"");
		map.put("currentPage", pg+"");
		map.put("lpg", lpg+"");
		return sqlMapClientTemplate.queryForList("salelist3", map);
	}
	
	public int count3(int category1, int category2,int category3){
		Map<String, String> map = new HashMap<String, String>();
		map.put("category1", category1+"");
		map.put("category2", category2+"");
		map.put("category3", category3+"");
		return (int) sqlMapClientTemplate.queryForObject("count3",map);
	}
	
	public List<ItemDto> newsalelist3(int category1, int category2,int category3,int pg, int lpg){
		Map<String, String> map = new HashMap<String, String>();
		map.put("category1", category1+"");
		map.put("category2", category2+"");
		map.put("category3", category3+"");
		map.put("currentPage", pg+"");
		map.put("lpg", lpg+"");
		return sqlMapClientTemplate.queryForList("newsalelist3", map);
	}
	
	public List<ItemDto> lowsalelist3(int category1, int category2,int category3,int pg, int lpg){
		Map<String, String> map = new HashMap<String, String>();
		map.put("category1", category1+"");
		map.put("category2", category2+"");
		map.put("category3", category3+"");
		map.put("currentPage", pg+"");
		map.put("lpg", lpg+"");
		return sqlMapClientTemplate.queryForList("lowsalelist3", map);
	}
	
	public List<ItemDto> highsalelist3(int category1, int category2,int category3,int pg, int lpg){
		Map<String, String> map = new HashMap<String, String>();
		map.put("category1", category1+"");
		map.put("category2", category2+"");
		map.put("category3", category3+"");
		map.put("currentPage", pg+"");
		map.put("lpg", lpg+"");
		return sqlMapClientTemplate.queryForList("highsalelist3", map);
	}
	
	public List<ItemDto> hitsalelist3(int category1, int category2,int category3,int pg, int lpg){
		Map<String, String> map = new HashMap<String, String>();
		map.put("category1", category1+"");
		map.put("category2", category2+"");
		map.put("category3", category3+"");
		map.put("currentPage", pg+"");
		map.put("lpg", lpg+"");
		return sqlMapClientTemplate.queryForList("hitsalelist3", map);
	}
	
	public ItemDto select(int itemnum){
		return (ItemDto) sqlMapClientTemplate.queryForObject("selectitem", itemnum);
	}
	
	public List<ItemOptionDto> selectItem(int itemnum){
		return sqlMapClientTemplate.queryForList("selectlist", itemnum);
	}
	
	
}
