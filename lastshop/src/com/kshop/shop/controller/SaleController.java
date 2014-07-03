package com.kshop.shop.controller;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kshop.shop.model.*;


//일반사용자들의 구매 활동
@Controller
public class SaleController {
	SaleDao dao;
	
	
	public void setDao(SaleDao dao) {
		this.dao = dao;
	}
	
	@RequestMapping("salelist1.do")
	public ModelAndView saleList1(@RequestParam int category1){
		System.out.println("category1 = " + category1);
		ModelAndView mav= new ModelAndView();
		List<ItemDto> list= dao.salelist1(category1);
		int cnt =dao.count1(category1);
		System.out.println(cnt);
		mav.addObject("cnt", cnt);
		mav.addObject("list",list);
		mav.setViewName("/web/shop/Category.tiles");
		return mav;
	}
	@RequestMapping("salelist2.do")
	public ModelAndView saleList2(@RequestParam int category1, int category2){
		ModelAndView mav= new ModelAndView();
		List<ItemDto> list= dao.salelist2(category1, category2);
		int cnt =dao.count2(category1,category2);
		System.out.println(cnt);
		mav.addObject("cnt", cnt);
		mav.addObject("list",list);
		mav.setViewName("/web/shop/Category.tiles");
		return mav;
	}
	@RequestMapping("salelist3.do")
	public ModelAndView saleList3(@RequestParam int category1, int category2, int category3){
		ModelAndView mav= new ModelAndView();
		mav.setViewName("/web/shop/Category.tiles");
		return mav;
	}
	
	@RequestMapping("selectitem.do")
	public ModelAndView selectitem(@RequestParam int itemnum){
		ModelAndView mav= new ModelAndView();
		ItemDto itemDto= dao.select(itemnum);
		List<ItemOptionDto> list= dao.selectItem(itemnum); 
		mav.addObject("list", list);
		mav.addObject("itemDto", itemDto);
		mav.setViewName("/web/shop/Detail.tiles");
		return mav;
	}
}
