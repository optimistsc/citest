package com.kshop.shop.service;

import java.util.List;

import com.kshop.shop.model.*;

public interface ItemService {

	public List<ItemDto> ItemList();
	
	public String itemInsert(ItemDto itemDto, ItemOptionDtoList list);
	
	public List<Thr_CategoryDto> getThr_Category();
	
	public String fileUpload(UploadFileDto uploadFileDto) throws Exception;

	
}
