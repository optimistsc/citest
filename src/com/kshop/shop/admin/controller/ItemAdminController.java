package com.kshop.shop.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

//관리자 컨트롤러 (상품 등록, 검색, 수정, 삭제, 리스트 관련)
@Controller
public class ItemAdminController {
	
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
