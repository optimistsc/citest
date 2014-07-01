package com.kshop.shop.service;

import java.util.List;

import com.kshop.shop.model.ItemDao;
import com.kshop.shop.model.ItemDto;
import com.kshop.shop.model.ItemOptionDtoList;
import com.kshop.shop.model.Thr_CategoryDto;

public class ItemServiceImpl implements ItemService {
	
	private ItemDao itemDao;
	
	public void setItemDao(ItemDao itemDao) {
		this.itemDao = itemDao;
	}

	@Override
	public List<ItemDto> ItemList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String itemInsert(ItemDto itemDto, ItemOptionDtoList list) {
		String viewName = "";
		if(itemDao.itemInsert(itemDto, list)) {
			viewName = "itemInsertSuccess";
		} else {
			viewName = "itemInsertFail";
		}
		return viewName;
	}

	@Override
	public List<Thr_CategoryDto> getThr_Category() {
		return itemDao.getThr_Category();
	}

}