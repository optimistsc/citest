package com.kshop.shop.model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.orm.ibatis.SqlMapClientTemplate;

public class CategoryDao {
	SqlMapClientTemplate sqlMapClientTemplate;

	public void setSqlMapClientTemplate(
			SqlMapClientTemplate sqlMapClientTemplate) {
		this.sqlMapClientTemplate = sqlMapClientTemplate;
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

}
