package com.kshop.shop.service;

import java.util.List;

import com.kshop.shop.model.*;
import com.kshop.util.FileUpload;

public class ItemServiceImpl implements ItemService {
	
	private ItemDao itemDao;

	public void setItemDao(ItemDao itemDao) {
		this.itemDao = itemDao;
	}
	
	private FileUpload fileUpload;
	
	public void setFileUpload(FileUpload fileUpload) {
		this.fileUpload = fileUpload;
	}

	@Override
	public List<ItemDto> ItemList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String itemInsert(ItemDto itemDto, ItemOptionDtoList list, UploadFileDto uploadFileDto) throws Exception {
		String viewName = "";
		List<UploadFileDto> fdList = fileUpload.fileUpload(uploadFileDto);
		itemDto.setS_picture(fdList.get(0).getFilePath());
		itemDto.setB_picture(fdList.get(1).getFilePath());
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
