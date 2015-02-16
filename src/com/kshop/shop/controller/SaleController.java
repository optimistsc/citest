package com.kshop.shop.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kshop.shop.model.ItemDto;
import com.kshop.shop.model.ItemOptionDto;
import com.kshop.shop.model.SaleDao;
import com.kshop.util.SaleConstant;
import com.kshop.util.SalePageNavi;


//일반사용자들의 구매 활동
@Controller
public class SaleController {
	SaleDao dao;
	
	
	public void setDao(SaleDao dao) {
		this.dao = dao;
	}
	//카테고리 1개까지
	@RequestMapping("salelist1.do")
	public ModelAndView saleList1(@RequestParam int category1, int pg, String to){
		ModelAndView mav= new ModelAndView();
		SalePageNavi pn;
		String to1=to;
		List<ItemDto> list= dao.salelist1(category1, pg, SaleConstant.LIST_COUNT);
		List<ItemDto> blist=dao.best(category1);
		mav.addObject("blist",blist);
		int cnt =dao.count1(category1);
		int ca1= category1;
		pn = new SalePageNavi(cnt, pg);
		mav.addObject("page", pn.getNavigator());
		mav.addObject("cnt", cnt);
		mav.addObject("list",list);
		mav.addObject("ca1", ca1);
		mav.addObject("to1", to1);
		mav.setViewName("/web/shop/Category.tiles");
		return mav;
	}
	
	
	@RequestMapping("hititem1.do")
	public ModelAndView hititem1(@RequestParam int category1, int pg, String to){
		ModelAndView mav= new ModelAndView();
		SalePageNavi pn;
		String to1=to;
		List<ItemDto> list= dao.hitsalelist1(category1, pg, SaleConstant.LIST_COUNT);
		List<ItemDto> blist=dao.best(category1);
		mav.addObject("blist",blist);
		int cnt =dao.count1(category1);
		int ca1= category1;
		pn = new SalePageNavi(cnt, pg);
		mav.addObject("page", pn.getNavigator());
		mav.addObject("cnt", cnt);
		mav.addObject("list",list);
		mav.addObject("ca1", ca1);
		mav.addObject("to1", to1);
		mav.setViewName("/web/shop/Category.tiles");
		return mav;
	}
	
	@RequestMapping("newitem1.do")
	public ModelAndView newitem1(@RequestParam int category1, int pg, String to){
		ModelAndView mav= new ModelAndView();
		SalePageNavi pn;
		String to1=to;
		List<ItemDto> list= dao.newsalelist1(category1, pg, SaleConstant.LIST_COUNT);
		List<ItemDto> blist=dao.best(category1);
		mav.addObject("blist",blist);
		int cnt =dao.count1(category1);
		int ca1= category1;
		pn = new SalePageNavi(cnt, pg);
		mav.addObject("page", pn.getNavigator());
		mav.addObject("cnt", cnt);
		mav.addObject("list",list);
		mav.addObject("ca1", ca1);
		mav.addObject("to1", to1);
		mav.setViewName("/web/shop/Category.tiles");
		return mav;
	}
	
	@RequestMapping("lowitem1.do")
	public ModelAndView lowitem1(@RequestParam int category1, int pg, String to){
		ModelAndView mav= new ModelAndView();
		SalePageNavi pn;
		String to1=to;
		List<ItemDto> list= dao.lowsalelist1(category1, pg, SaleConstant.LIST_COUNT);
		List<ItemDto> blist=dao.best(category1);
		mav.addObject("blist",blist);
		int cnt =dao.count1(category1);
		int ca1= category1;
		pn = new SalePageNavi(cnt, pg);
		mav.addObject("page", pn.getNavigator());
		mav.addObject("cnt", cnt);
		mav.addObject("list",list);
		mav.addObject("ca1", ca1);
		mav.addObject("to1", to1);
		mav.setViewName("/web/shop/Category.tiles");
		return mav;
	}
	
	@RequestMapping("highitem1.do")
	public ModelAndView highitem1(@RequestParam int category1, int pg, String to){
		ModelAndView mav= new ModelAndView();
		SalePageNavi pn;
		String to1=to;
		List<ItemDto> list= dao.highsalelist1(category1, pg, SaleConstant.LIST_COUNT);
		List<ItemDto> blist=dao.best(category1);
		mav.addObject("blist",blist);
		int cnt =dao.count1(category1);
		int ca1= category1;
		pn = new SalePageNavi(cnt, pg);
		mav.addObject("page", pn.getNavigator());
		mav.addObject("cnt", cnt);
		mav.addObject("list",list);
		mav.addObject("ca1", ca1);
		mav.addObject("to1", to1);
		mav.setViewName("/web/shop/Category.tiles");
		return mav;
	}
	//카테고리 2개까지
	
	@RequestMapping("salelist2.do")
	public ModelAndView saleList2(@RequestParam int category1, int category2, int pg, String to){
		
		ModelAndView mav= new ModelAndView();
		SalePageNavi pn;
		String to2=to;
		List<ItemDto> list= dao.salelist2(category1, category2, pg, SaleConstant.LIST_COUNT);
		List<ItemDto> blist=dao.best(category1);
		mav.addObject("blist",blist);
		int cnt =dao.count2(category1, category2);
		int ca1= category1;
		int ca2=category2;
		pn = new SalePageNavi(cnt, pg);
		mav.addObject("page", pn.getNavigator());
		mav.addObject("cnt", cnt);
		mav.addObject("list",list);
		mav.addObject("ca1", ca1);
		mav.addObject("ca2", ca2);
		mav.addObject("to2", to2);
		mav.setViewName("/web/shop/Category2.tiles");
		return mav;
	}
	
	
	@RequestMapping("hititem2.do")
	public ModelAndView hititem2(@RequestParam int category1, int category2, int pg, String to){
		ModelAndView mav= new ModelAndView();
		SalePageNavi pn;
		String to2=to;
		List<ItemDto> list= dao.hitsalelist2(category1, category2, pg, SaleConstant.LIST_COUNT );
		List<ItemDto> blist=dao.best(category1);
		mav.addObject("blist",blist);
		int cnt =dao.count2(category1, category2);
		int ca1= category1;
		int ca2=category2;
		pn = new SalePageNavi(cnt, pg);
		mav.addObject("page", pn.getNavigator());
		mav.addObject("cnt", cnt);
		mav.addObject("list",list);
		mav.addObject("ca1", ca1);
		mav.addObject("ca2", ca2);
		mav.addObject("to2", to2);
		mav.setViewName("/web/shop/Category2.tiles");
		return mav;
	}
	
	@RequestMapping("newitem2.do")
	public ModelAndView newitem2(@RequestParam int category1, int category2, int pg, String to){
		ModelAndView mav= new ModelAndView();
		SalePageNavi pn;
		String to2=to;
		List<ItemDto> list= dao.newsalelist2(category1, category2,pg, SaleConstant.LIST_COUNT);
		List<ItemDto> blist=dao.best(category1);
		mav.addObject("blist",blist);
		int cnt =dao.count2(category1, category2);
		int ca1= category1;
		int ca2=category2;
		pn = new SalePageNavi(cnt, pg);
		mav.addObject("page", pn.getNavigator());
		mav.addObject("cnt", cnt);
		mav.addObject("list",list);
		mav.addObject("ca1", ca1);
		mav.addObject("ca2", ca2);
		mav.addObject("to2", to2);
		mav.setViewName("/web/shop/Category2.tiles");
		return mav;
	}
	
	@RequestMapping("lowitem2.do")
	public ModelAndView lowitem2(@RequestParam int category1, int category2, int pg, String to){
		ModelAndView mav= new ModelAndView();
		SalePageNavi pn;
		String to2=to;
		List<ItemDto> list= dao.lowsalelist2(category1, category2,pg, SaleConstant.LIST_COUNT);
		List<ItemDto> blist=dao.best(category1);
		mav.addObject("blist",blist);
		int cnt =dao.count2(category1, category2);
		int ca1= category1;
		int ca2=category2;
		pn = new SalePageNavi(cnt, pg);
		mav.addObject("page", pn.getNavigator());
		mav.addObject("cnt", cnt);
		mav.addObject("list",list);
		mav.addObject("ca1", ca1);
		mav.addObject("ca2", ca2);
		mav.addObject("to2", to2);
		mav.setViewName("/web/shop/Category2.tiles");
		return mav;
	}
	
	@RequestMapping("highitem2.do")
	public ModelAndView highitem2(@RequestParam int category1, int category2, int pg, String to){
		ModelAndView mav= new ModelAndView();
		SalePageNavi pn;
		String to2=to;
		List<ItemDto> list= dao.highsalelist2(category1, category2,pg, SaleConstant.LIST_COUNT);
		List<ItemDto> blist=dao.best(category1);
		mav.addObject("blist",blist);
		int cnt =dao.count2(category1, category2);
		int ca1= category1;
		int ca2= category2;
		pn = new SalePageNavi(cnt, pg);
		mav.addObject("page", pn.getNavigator());
		mav.addObject("cnt", cnt);
		mav.addObject("list",list);
		mav.addObject("ca1", ca1);
		mav.addObject("ca2", ca2);
		mav.addObject("to2", to2);
		mav.setViewName("/web/shop/Category2.tiles");
		return mav;
	}
	//카테고리 3개까지

	@RequestMapping("salelist3.do")
	public ModelAndView saleList3(@RequestParam int category1, int category2, int category3, int pg, String to){
		ModelAndView mav= new ModelAndView();
		String to3=to;
		List<ItemDto> list= dao.salelist3(category1, category2, category3,pg, SaleConstant.LIST_COUNT);
		List<ItemDto> blist=dao.best(category1);
		mav.addObject("blist",blist);
		int cnt =dao.count3(category1, category2, category3);
		int ca1= category1;
		int ca2=category2;
		int ca3=category3;
		mav.addObject("cnt", cnt);
		mav.addObject("list",list);
		mav.addObject("ca1", ca1);
		mav.addObject("ca2", ca2);
		mav.addObject("ca3", ca3);
		mav.addObject("to3", to3);
		mav.setViewName("/web/shop/Category3.tiles");
		return mav;
	}
	
	
	@RequestMapping("hititem3.do")
	public ModelAndView hititem3(@RequestParam int category1, int category2, int category3,int pg, String to){
		ModelAndView mav= new ModelAndView();
		String to3=to;
		List<ItemDto> list= dao.hitsalelist3(category1, category2, category3,pg, SaleConstant.LIST_COUNT);
		List<ItemDto> blist=dao.best(category1);
		mav.addObject("blist",blist);
		int cnt =dao.count3(category1, category2, category3);
		int ca1= category1;
		int ca2=category2;
		int ca3=category3;
		mav.addObject("cnt", cnt);
		mav.addObject("list",list);
		mav.addObject("ca1", ca1);
		mav.addObject("ca2", ca2);
		mav.addObject("ca3", ca3);
		mav.addObject("to3", to3);
		mav.setViewName("/web/shop/Category3.tiles");
		return mav;
	}
	
	@RequestMapping("newitem3.do")
	public ModelAndView newitem3(@RequestParam int category1, int category2, int category3,int pg, String to){
		ModelAndView mav= new ModelAndView();
		String to3=to;
		List<ItemDto> list= dao.newsalelist3(category1, category2, category3,pg, SaleConstant.LIST_COUNT);
		List<ItemDto> blist=dao.best(category1);
		mav.addObject("blist",blist);
		int cnt =dao.count3(category1, category2, category3);
		int ca1= category1;
		int ca2=category2;
		int ca3=category3;
		mav.addObject("cnt", cnt);
		mav.addObject("list",list);
		mav.addObject("ca1", ca1);
		mav.addObject("ca2", ca2);
		mav.addObject("ca3", ca3);
		mav.addObject("to3", to3);
		mav.setViewName("/web/shop/Category3.tiles");
		return mav;
	}
	
	@RequestMapping("lowitem3.do")
	public ModelAndView lowitem3(@RequestParam int category1, int category2, int category3,int pg, String to){
		ModelAndView mav= new ModelAndView();
		String to3=to;
		List<ItemDto> list= dao.lowsalelist3(category1, category2, category3,pg, SaleConstant.LIST_COUNT);
		List<ItemDto> blist=dao.best(category1);
		mav.addObject("blist",blist);
		int cnt =dao.count3(category1, category2, category3);
		int ca1= category1;
		int ca2=category2;
		int ca3=category3;
		mav.addObject("cnt", cnt);
		mav.addObject("list",list);
		mav.addObject("ca1", ca1);
		mav.addObject("ca2", ca2);
		mav.addObject("ca3", ca3);
		mav.addObject("to3", to3);
		mav.setViewName("/web/shop/Category3.tiles");
		return mav;
	}
	
	@RequestMapping("highitem3.do")
	public ModelAndView highitem3(@RequestParam int category1, int category2, int category3,int pg, String to){
		ModelAndView mav= new ModelAndView();
		String to3=to;
		List<ItemDto> list= dao.highsalelist3(category1, category2, category3,pg, SaleConstant.LIST_COUNT);
		List<ItemDto> blist=dao.best(category1);
		mav.addObject("blist",blist);
		int cnt =dao.count3(category1, category2, category3);
		int ca1= category1;
		int ca2=category2;
		int ca3=category3;
		mav.addObject("cnt", cnt);
		mav.addObject("list",list);
		mav.addObject("ca1", ca1);
		mav.addObject("ca2", ca2);
		mav.addObject("ca3", ca3);
		mav.addObject("to3", to3);
		mav.setViewName("/web/shop/Category3.tiles");
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
