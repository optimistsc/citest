package com.kshop.shop.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kshop.shop.model.ItemDao;
import com.kshop.shop.model.ItemDto;
import com.kshop.util.Constant;
import com.kshop.util.PageNavi;
import com.kshop.util.RequestInfoDto;

@Controller
public class ItemController {
	private ItemDao dao;

	public void setDao(ItemDao dao) {
		this.dao = dao;
		
	}
	
	//상품전체 조회
	@RequestMapping("item_list.do") 
	public ModelAndView moveItemList (@RequestParam int pg, @RequestParam String key, @RequestParam String word){
		System.out.println("상품전체조회 컨트롤러(상품전체조회1)");
		RequestInfoDto requestInfoDto = new RequestInfoDto();
		requestInfoDto.setKey(key);
		requestInfoDto.setWord(word);
		requestInfoDto.setLpg(Constant.getListCount());
		requestInfoDto.setCurrentPage(pg);
		List<ItemDto> itemList = new ArrayList<ItemDto>();
		PageNavi pn;
		
		System.out.println("RequestInfoDto : "+requestInfoDto);
		
		if(requestInfoDto.getKey().equals("")) {
			itemList = dao.itemList(requestInfoDto);
			pn = new PageNavi(dao.getTotalItemArticle(), pg);
			System.out.println("상품전체조회 컨트롤러 itemList(key equals)"+ itemList +"\n"+"pg : "+pg+"\n");
		} else {
			itemList = dao.searchItem(requestInfoDto);
			pn = new PageNavi(dao.getFindItemAreticle(requestInfoDto),pg);
			System.out.println("상품전체조회 컨트롤러 itemList(requestInfoDto)"+ itemList +"\n"+"pg : "+pg);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("itemList", itemList);
		mav.addObject("page", pn.getNavigator());
		mav.addObject("requestInfoDto",requestInfoDto);
		mav.setViewName("/item/itemList.tiles");
//		System.out.println("상품전체조회 컨트롤러 MAV"+ mav +"\n");		
		return mav;
		
	}
	
	//상품검색 조회
	@RequestMapping("item_search.do")
	public ModelAndView moveItemSearch (@RequestParam String key, @RequestParam String word){
		System.out.println("검색들어옴");
		System.out.println("key = " + key);
		System.out.println("상품검색 컨트롤러(상품검색)");
		RequestInfoDto requestInfoDto = new RequestInfoDto();
		requestInfoDto.setKey(key);
		requestInfoDto.setWord(word);
		requestInfoDto.setLpg(Constant.getListCount());
		requestInfoDto.setCurrentPage(1);
		List<ItemDto> itemList = dao.searchItem(requestInfoDto);
		PageNavi pn = new PageNavi(dao.getFindItemAreticle(requestInfoDto), 1);
		System.out.println("상품검색 컨트롤러" +"\n"+"key : "+key+"word: "+word+"\n");
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("itemList", itemList);
		mav.addObject("requestInfoDto",requestInfoDto);
		mav.addObject("page", pn.getNavigator());
		mav.setViewName("/item/itemList");
		System.out.println("상품검색 컨트롤러 MAV"+ mav +"\n");	
		
		return mav;
		
		
	}

}
