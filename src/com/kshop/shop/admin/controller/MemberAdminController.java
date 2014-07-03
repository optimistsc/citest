package com.kshop.shop.admin.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kshop.shop.model.MemberDao;
import com.kshop.util.ZipDto;

//관리자 컨트롤러 (관리자 계정, 회원 계정관리) 
@Controller
public class MemberAdminController {
	
	private MemberDao mdao;
	
	public void setMdao(MemberDao mdao) {
		this.mdao = mdao;
	}

	@RequestMapping("test2.do")
	public ModelAndView test1() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/jsp/asdfasd/test2");
		return mav;
	}

	@RequestMapping("searchzip.do")
	public ModelAndView openSearchZip() {
		System.out.println("searchzip.do");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/web/transaction/zipsearch");
		return mav;
	}
	
	@RequestMapping("searchzip1.do")
	public ModelAndView openSearchZip1() {
		System.out.println("searchzip1.do");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/web/transaction/zipsearch1");
		return mav;
	}
	
	@RequestMapping("zipsearch.do")
	public ModelAndView zipSearch(ZipDto zdto) {
		System.out.println("zipsearch.do");
		System.out.println(zdto.getDong());
		ModelAndView mav = new ModelAndView();
		List<ZipDto> list = new ArrayList<ZipDto>();
		
		list = mdao.zipList(zdto);
		mav.addObject("list", list);		
		
		mav.setViewName("/web/transaction/zipsearch");
		return mav;
	}
	
	@RequestMapping("zipsearch1.do")
	public ModelAndView zipSearch1(ZipDto zdto) {
		System.out.println("zipsearch.do");
		System.out.println(zdto.getDong());
		ModelAndView mav = new ModelAndView();
		List<ZipDto> list = new ArrayList<ZipDto>();
		
		list = mdao.zipList(zdto);
		mav.addObject("list", list);		
		
		mav.setViewName("/web/transaction/zipsearch1");
		return mav;
	}
	
	

}
