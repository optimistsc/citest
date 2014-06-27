package com.kshop.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ItemController {

	@RequestMapping(value="board_list.do", method=RequestMethod.GET)
	public ModelAndView list_move(@RequestParam("pg") int pg) throws Exception {
		ModelAndView mv = new ModelAndView();
//		mv.addObject("list", list);
		mv.setViewName("list");
		return mv;
	}
	
}
