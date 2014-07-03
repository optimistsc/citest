package com.kshop.shop.model;

import java.util.List;

import org.springframework.orm.ibatis.SqlMapClientTemplate;

import com.kshop.util.RequestInfoDto;
import com.kshop.util.ZipDto;

public class MemberDao {

	private SqlMapClientTemplate sqlMapClientTemplate;

	public void setSqlMapClientTemplate(
			SqlMapClientTemplate sqlMapClientTemplate) {
		this.sqlMapClientTemplate = sqlMapClientTemplate;
	}

	public List<ZipDto> zipList(ZipDto zdto) {

		return sqlMapClientTemplate.queryForList("zipList", zdto);
	}

}
