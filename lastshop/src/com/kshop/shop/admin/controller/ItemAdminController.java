package com.kshop.shop.admin.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kshop.shop.model.*;
import com.kshop.shop.service.ItemServiceImpl;

//관리자 컨트롤러 (상품 등록, 검색, 수정, 삭제, 리스트 관련)
@Controller
public class ItemAdminController {
	
	private ItemServiceImpl itemServiceImpl;
	
	public void setItemServiceImpl(ItemServiceImpl itemServiceImpl) {
		this.itemServiceImpl = itemServiceImpl;
	}

	@RequestMapping(value="item_insert.do", method=RequestMethod.GET)
	public ModelAndView itemInsertMove(){
		System.out.println("겟메소드");
		ModelAndView mv = new ModelAndView();
		mv.addObject("categoryList", itemServiceImpl.getThr_Category());
		mv.setViewName("/item/addItem");
		return mv;
	}

	@RequestMapping(value="item_insert.do", method=RequestMethod.POST)
	public ModelAndView itemInsertAction(ItemDto itemDto, ItemOptionDtoList list){
		return new ModelAndView(itemServiceImpl.itemInsert(itemDto, list));
	}
	
	@RequestMapping("itemlist.do")
	public ModelAndView itemlist (){
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	
	@RequestMapping(value="file.do", method=RequestMethod.POST)
	public ModelAndView fileupload (ItemFileDto itemFileDto) throws Exception{
		ModelAndView mav = new ModelAndView();
		itemServiceImpl.fileUpload(itemFileDto);
		return mav;
	}
	
	
//	//답글 작성
//	@RequestMapping(value="reply.do", method=RequestMethod.GET)
//	public ModelAndView move_reply(@RequestParam("seq") int seq, @RequestParam("pg") int pg, @RequestParam("key") String key, @RequestParam("word") String word) throws Exception {
//		//seq로 글을 조회하여 답글에 사용될 Dto 조회
//		ModelAndView mv = new ModelAndView();
//		mv.addObject("boardDto", boardDto);
//		mv.setViewName("reply");
//		return mv;
//	}
//	
//	//답글 등록
//	@RequestMapping(value="reply.do", method=RequestMethod.POST)
//	public ModelAndView reply_action(BoardDto boardDto) throws Exception {
//		//답글 등록 후 전체 글 리스트 조회
//		ModelAndView mv = new ModelAndView();
//		mv.addObject("list", list);
//		mv.setViewName("list");
//		return mv;
//	}

}