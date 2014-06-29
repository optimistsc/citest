package com.kshop.shop.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kshop.shop.model.*;

//������ ��Ʈ�ѷ� (��ǰ ���, �˻�, ����, ����, ����Ʈ ����)
@Controller
public class ItemAdminController {
	
	private ItemDao itemDao;
	
	public void setItemDao(ItemDao itemDao) {
		this.itemDao = itemDao;
	}
	
	
	@RequestMapping(value="item_insert.do", method=RequestMethod.POST)
	public ModelAndView itemInsertAction(ItemDto itemDto, ItemOptionDtoList list){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("test1");
		return mav;
	}
	
	@RequestMapping("itemlist.do")
	public ModelAndView itemlist (){
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	
//	//��� �ۼ�
//	@RequestMapping(value="reply.do", method=RequestMethod.GET)
//	public ModelAndView move_reply(@RequestParam("seq") int seq, @RequestParam("pg") int pg, @RequestParam("key") String key, @RequestParam("word") String word) throws Exception {
//		//seq�� ���� ��ȸ�Ͽ� ��ۿ� ���� Dto ��ȸ
//		ModelAndView mv = new ModelAndView();
//		mv.addObject("boardDto", boardDto);
//		mv.setViewName("reply");
//		return mv;
//	}
//	
//	//��� ���
//	@RequestMapping(value="reply.do", method=RequestMethod.POST)
//	public ModelAndView reply_action(BoardDto boardDto) throws Exception {
//		//��� ��� �� ��ü �� ����Ʈ ��ȸ
//		ModelAndView mv = new ModelAndView();
//		mv.addObject("list", list);
//		mv.setViewName("list");
//		return mv;
//	}

}