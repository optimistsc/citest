package com.kshop.shop.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

//������ ��Ʈ�ѷ� (��ǰ ���, �˻�, ����, ����, ����Ʈ ����)
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
