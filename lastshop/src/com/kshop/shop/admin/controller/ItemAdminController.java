package com.kshop.shop.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kshop.shop.model.ItemDto;
import com.kshop.shop.model.ItemOptionDtoList;
import com.kshop.shop.service.ItemServiceImpl;
import com.kshop.util.UploadFileDto;

//������ ��Ʈ�ѷ� (��ǰ ���, �˻�, ����, ����, ����Ʈ ����)
@Controller
public class ItemAdminController {
	
	private ItemServiceImpl itemServiceImpl;
	
	public void setItemServiceImpl(ItemServiceImpl itemServiceImpl) {
		this.itemServiceImpl = itemServiceImpl;
	}

	@RequestMapping(value="item_insert.do", method=RequestMethod.GET)
	public ModelAndView itemInsertMove(){
		ModelAndView mv = new ModelAndView();
		mv.addObject("categoryList", itemServiceImpl.getThr_Category());
		mv.setViewName("/item/addItem.tiles");
		return mv;
	}

	@RequestMapping(value="item_insert.do", method=RequestMethod.POST)
	public ModelAndView itemInsertAction(ItemDto itemDto, ItemOptionDtoList list, UploadFileDto uploadFileDto) throws Exception{
		return new ModelAndView("redirect:" + itemServiceImpl.itemInsert(itemDto, list, uploadFileDto));
	}
	
	@RequestMapping("test1.do")
	public ModelAndView test1 (){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("test1");
		return mav;
	}
	
	@RequestMapping("itemlist.do")
	public ModelAndView itemlist (){
		ModelAndView mav = new ModelAndView();
		
		
		return mav;
	}

}
