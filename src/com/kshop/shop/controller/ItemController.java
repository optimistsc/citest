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
	
	//��ǰ��ü ��ȸ
	@RequestMapping("item_list.do") 
	public ModelAndView moveItemList (@RequestParam int pg, @RequestParam String key, @RequestParam String word){
		System.out.println("��ǰ��ü��ȸ ��Ʈ�ѷ�(��ǰ��ü��ȸ1)");
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
			System.out.println("��ǰ��ü��ȸ ��Ʈ�ѷ� itemList(key equals)"+ itemList +"\n"+"pg : "+pg+"\n");
		} else {
			itemList = dao.searchItem(requestInfoDto);
			pn = new PageNavi(dao.getFindItemAreticle(requestInfoDto),pg);
			System.out.println("��ǰ��ü��ȸ ��Ʈ�ѷ� itemList(requestInfoDto)"+ itemList +"\n"+"pg : "+pg);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("itemList", itemList);
		mav.addObject("page", pn.getNavigator());
		mav.addObject("requestInfoDto",requestInfoDto);
		mav.setViewName("/item/itemList.tiles");
//		System.out.println("��ǰ��ü��ȸ ��Ʈ�ѷ� MAV"+ mav +"\n");		
		return mav;
		
	}
	
	//��ǰ�˻� ��ȸ
	@RequestMapping("item_search.do")
	public ModelAndView moveItemSearch (@RequestParam String key, @RequestParam String word){
		System.out.println("�˻�����");
		System.out.println("key = " + key);
		System.out.println("��ǰ�˻� ��Ʈ�ѷ�(��ǰ�˻�)");
		RequestInfoDto requestInfoDto = new RequestInfoDto();
		requestInfoDto.setKey(key);
		requestInfoDto.setWord(word);
		requestInfoDto.setLpg(Constant.getListCount());
		requestInfoDto.setCurrentPage(1);
		List<ItemDto> itemList = dao.searchItem(requestInfoDto);
		PageNavi pn = new PageNavi(dao.getFindItemAreticle(requestInfoDto), 1);
		System.out.println("��ǰ�˻� ��Ʈ�ѷ�" +"\n"+"key : "+key+"word: "+word+"\n");
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("itemList", itemList);
		mav.addObject("requestInfoDto",requestInfoDto);
		mav.addObject("page", pn.getNavigator());
		mav.setViewName("/item/itemList");
		System.out.println("��ǰ�˻� ��Ʈ�ѷ� MAV"+ mav +"\n");	
		
		return mav;
		
		
	}

}
