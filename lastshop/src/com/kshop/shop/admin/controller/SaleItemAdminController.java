package com.kshop.shop.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

//������ ��Ʈ�ѷ� ( ��ǰ ���� �Խñ� ���, ����, ���� / ��ǰ ī�װ� ����� )
@Controller
public class SaleItemAdminController {

	// �����ϱ�â���� �ܼ��̵�
	@RequestMapping("ordergo.do")
	public ModelAndView join() {
		System.out.println("11111");
		ModelAndView mav = new ModelAndView();

		mav.setViewName("/web/transaction/OrderInfo.tiles");

		return mav;
	}

}
