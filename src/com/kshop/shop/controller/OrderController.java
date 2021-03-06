package com.kshop.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kshop.shop.model.OrderDao;
import com.kshop.shop.model.OrderDto;

@Controller
public class OrderController {

	private OrderDao dao;

	public void setDao(OrderDao dao) {
		this.dao = dao;
	}
	
	// Transaction
	@RequestMapping("goOrder.do")
	public ModelAndView goOrder(OrderDto order) {
		System.out.println(order.getColor());
		ModelAndView mav = new ModelAndView();		
		mav.addObject("order", order);
		mav.setViewName("/web/transaction/OrderInfo.tiles");
		return mav;
	}
	
	/*
	@RequestMapping("order.do")
	public ModelAndView order_action(OrderDto order) {
		ModelAndView mav = new ModelAndView();
		
		try {
			mav = dao.order_Action(order);
			mav.setViewName("/jsp/transaction/orderOk.jsp");
			
		} catch (Exception e) {
			mav.setViewName("/jsp/transaction/orderFail.jsp");
		}
		
		return mav;
	}
	*/
	
	
	
}
