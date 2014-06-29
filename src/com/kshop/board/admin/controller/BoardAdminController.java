package com.kshop.board.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardAdminController {

	@RequestMapping("test.do")
	public ModelAndView test(){
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("/web/test1.tiles");
		
		return mav;
		
	}
	
	
}
