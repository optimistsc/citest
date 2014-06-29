package com.kshop.shop.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


//관리자 컨트롤러 (관리자 계정, 회원 계정관리) 
@Controller
public class MemberAdminController {
	
	@RequestMapping("test2.do")
	public ModelAndView test1 (){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("test2");
		return mav;
	}

}
