package com.kshop.shop.model;

import java.util.HashMap;
import java.util.Map;

import org.springframework.orm.ibatis.SqlMapClientTemplate;

public class LoginDao {
	private SqlMapClientTemplate sqlMapClientTemplate;
	
	public void setSqlMapClientTemplate(
			SqlMapClientTemplate sqlMapClientTemplate) {
		this.sqlMapClientTemplate = sqlMapClientTemplate;
	}
	
	public MemberDto loginon(String id, String pass){
		Map<String, String> map = new HashMap<String, String>();
		System.out.println("로긴디에오 : " + id + " : " + pass);
		map.put("id", id);
		map.put("pass", pass);
		
		return (MemberDto)sqlMapClientTemplate.queryForObject("userinfo", map);
	}
	
}
