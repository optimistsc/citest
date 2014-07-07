package com.kshop.shop.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.orm.ibatis.SqlMapClientTemplate;

public class MainDao {
	private SqlMapClientTemplate sqlMapClientTemplate;
	
	public void setSqlMapClientTemplate(
			SqlMapClientTemplate sqlMapClientTemplate) {
		this.sqlMapClientTemplate = sqlMapClientTemplate;
	}
	
	public MemberDto loginon(String id, String pass){
		Map<String, String> map = new HashMap<String, String>();
		System.out.println("�α�𿡿� : " + id + " : " + pass);
		map.put("id", id);
		map.put("pass", pass);
		
		return (MemberDto)sqlMapClientTemplate.queryForObject("userinfo", map);
	}
	
	public List<Fir_CategoryDto> getFir_Category() {

		return (List<Fir_CategoryDto>) sqlMapClientTemplate
				.queryForList("getFir_Category");
	}

	public List<Sec_CategoryDto> getSec_Category() {

		return (List<Sec_CategoryDto>) sqlMapClientTemplate
				.queryForList("getSec_Category");
	}

	public List<Thr_CategoryDto> getThr_Category() {
		// TODO Auto-generated method stub
		return (List<Thr_CategoryDto>) sqlMapClientTemplate
				.queryForList("getThr_Category");
	}
		
	public void join(JoinDto jdto){
		sqlMapClientTemplate.insert("join", jdto);
	}
	//�α��ǰ ���
	public List<ItemDto> newitemlist(){
		return (List<ItemDto>) sqlMapClientTemplate.queryForList("newitemlist");
	}
}
