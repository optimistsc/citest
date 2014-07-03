package com.kshop.shop.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

//관리자 컨트롤러 ( 상품 관련 게시글 등록, 수정, 삭제 / 상품 카테고리 만들기 )
@Controller
public class SaleItemAdminController {

	// 구매하기창으로 단순이동
	@RequestMapping("ordergo.do")
	public ModelAndView join() {
		System.out.println("11111");
		ModelAndView mav = new ModelAndView();

		mav.setViewName("/web/transaction/OrderInfo.tiles");

		return mav;
	}

}
