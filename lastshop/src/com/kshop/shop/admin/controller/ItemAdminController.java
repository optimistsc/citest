package com.kshop.shop.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kshop.shop.model.ItemDto;
import com.kshop.shop.model.ItemOptionDtoList;
import com.kshop.shop.service.ItemServiceImpl;
import com.kshop.util.UploadFileDto;

//관리자 컨트롤러 (상품 등록, 검색, 수정, 삭제, 리스트 관련)
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

	@RequestMapping(value="item_modify.do", method=RequestMethod.GET)
	public ModelAndView itemModifyMove(@RequestParam int opt_code){
		ItemDto findDto = new ItemDto();
		findDto.setOpt_code(opt_code);
		ModelAndView mv = new ModelAndView();
		mv.addObject("categoryList", itemServiceImpl.getThr_Category());
		mv.addObject("itemDto", itemServiceImpl.getItemInfo(findDto));
		mv.setViewName("/item/modifyItem.tiles");
		return mv;
	}

	@RequestMapping(value="item_modify.do", method=RequestMethod.POST)
	public ModelAndView itemModifyMove(ItemDto itemDto, ItemOptionDtoList list, UploadFileDto uploadFileDto) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName(itemServiceImpl.itemModify(itemDto, list, uploadFileDto));
		return mv;
	}

}
