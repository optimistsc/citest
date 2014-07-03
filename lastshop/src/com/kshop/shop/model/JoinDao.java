package com.kshop.shop.model;

import org.springframework.orm.ibatis.SqlMapClientTemplate;

public class JoinDao {
	
	private SqlMapClientTemplate sqlMapClientTemplate;


	public void setSqlMapClientTemplate(SqlMapClientTemplate sqlMapClientTemplate) {
		this.sqlMapClientTemplate = sqlMapClientTemplate;
	}
	
	

}
