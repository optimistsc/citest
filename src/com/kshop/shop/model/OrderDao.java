package com.kshop.shop.model;

import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;

public class OrderDao {

	private SqlMapClientTemplate iBatisTemplate;

	public void setiBatisTemplate(SqlMapClientTemplate iBatisTemplate) {
		this.iBatisTemplate = iBatisTemplate;
	}

	/*
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor={Exception.class})
	public ModelAndView order_Action(OrderDto order) throws Exception {
		ModelAndView mav = new ModelAndView();

		/*
		if (findItem(order.getNo()).getItem_ea() < order.getAmount()) {
			throw new Exception("재고 부족");
		}
		*/
/*
		addOrder(order);
		updateItem(order);
		
		return mav;
	}

	public void updateItem(OrderDto order) {
		iBatisTemplate.update("updateItem", order);
	}

	public void addOrder(OrderDto order) {
		iBatisTemplate.insert("addOrder", order);
	}

	public ItemOptionDto findItem(String no) {
		return (ItemOptionDto) iBatisTemplate.queryForObject("findItem", no);
	}
	*/
}
