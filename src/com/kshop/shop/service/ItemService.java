package com.kshop.shop.service;

import java.util.List;

import com.kshop.shop.model.ItemDto;
import com.kshop.shop.model.ItemOptionDtoList;
import com.kshop.shop.model.Thr_CategoryDto;
import com.kshop.util.UploadFileDto;

public interface ItemService {

	public List<ItemDto> ItemList();
	
	public String itemInsert(ItemDto itemDto, ItemOptionDtoList list, UploadFileDto uploadFileDto) throws Exception;
	
	public List<Thr_CategoryDto> getThr_Category();
	
}
