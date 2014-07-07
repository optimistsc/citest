package com.kshop.shop.model;


import org.springframework.orm.ibatis.SqlMapClientTemplate;

import com.kshop.util.RequestInfoDto;

import java.util.HashMap;
import java.util.List;
import java.util.Map;



public class ItemDao {
	
	private SqlMapClientTemplate sqlMapClientTemplate;


	public void setSqlMapClientTemplate(SqlMapClientTemplate sqlMapClientTemplate) {
		this.sqlMapClientTemplate = sqlMapClientTemplate;
	}
	
	
	
	public MemberDto loginon(String id, String pass){
		Map<String, String> map = new HashMap<String, String>();
		System.out.println("�α�𿡿� : " + id + " : " + pass);
		map.put("id", id);
		map.put("pass", pass);
		
		return (MemberDto)sqlMapClientTemplate.queryForObject("userinfo", map);
	}
	
	public boolean itemInsert(ItemDto itemDto, ItemOptionDtoList list){
		boolean flag = false;
		int cnt = 0;
		
		cnt += sqlMapClientTemplate.update("itemDtoInsert", itemDto);
		
		int len = list.getList().size();
		for(int i=0;i<len;i++) {
			ItemOptionDto optDto = list.getList().get(i);
			optDto.setRef_code((int) sqlMapClientTemplate.queryForObject("nowRefItemcode"));
			optDto.setOpt_code((optDto.getRef_code() * 1000) + optDto.getOpt_code());
			cnt += sqlMapClientTemplate.update("optionDtoInsert", optDto);
		}
		
		if(cnt == len + 1) {
			flag = true;
		}
		
		return flag;
	}
	
	public List<Thr_CategoryDto> getThr_Category(){
		List<Thr_CategoryDto> categoryList = sqlMapClientTemplate.queryForList("getThr_Category");
		return categoryList; 
	}

	//��ü ��ǰ ����Ʈ
	public List<ItemDto> itemList (RequestInfoDto requestInfoDto) {
		
		return sqlMapClientTemplate.queryForList("itemList", requestInfoDto);
	}
	
	//�˻��� ��ǰ ����Ʈ
	public List<ItemDto> searchItem (RequestInfoDto requestInfoDto) {
		
		return sqlMapClientTemplate.queryForList("searchItem", requestInfoDto);
	}
	
	//�� ��ǰ ��
	public int getTotalItemArticle(){
		
		return (int) sqlMapClientTemplate.queryForObject("getTotalItemArticle");
	}
	
	//�˻��� ��ǰ�� �� ��
	public int getFindItemAreticle(RequestInfoDto requestInfoDto){
		
		return (int) sqlMapClientTemplate.queryForObject("getFindItemAreticle", requestInfoDto);
	}
	
	//���� ��ǰ ����
	public ItemDto getItemInfo(ItemDto itemDto) {
		return (ItemDto) sqlMapClientTemplate.queryForObject("getItemInfo", itemDto);
	}

}
