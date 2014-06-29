package com.kshop.shop.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kshop.shop.model.CategoryDao;
import com.kshop.shop.model.Fir_CategoryDto;
import com.kshop.shop.model.LoginDao;
import com.kshop.shop.model.MemberDto;
import com.kshop.shop.model.Sec_CategoryDto;
import com.kshop.shop.model.Thr_CategoryDto;



@Controller
public class MainController {
	
	LoginDao dao;
	CategoryDao categories;

	public void setCategories(CategoryDao categories) {
		this.categories = categories;
	}

	public void setDao(LoginDao dao) {
		this.dao = dao;
	}

	@RequestMapping("home.do")
	public ModelAndView home(HttpSession session){
		//db카테고리를 불러와 세션에 저장
		List<Fir_CategoryDto> list1 = categories.getFir_Category();
		List<Sec_CategoryDto> list2 = categories.getSec_Category();
		List<Thr_CategoryDto> list3 = categories.getThr_Category();
		session.setAttribute("category1", list1);
		session.setAttribute("category2", list2);
		session.setAttribute("category3", list3);
		ModelAndView mav = new ModelAndView();
		mav.addObject("category1", list1);
		mav.addObject("category2", list2);
		mav.addObject("category3", list3);

		mav.setViewName("home.tiles");
		
		return mav;
	}
	
	//로그인 페이지 이동
	@RequestMapping("login.do")
	public ModelAndView login(){
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("/login/login.tiles");
		
		return mav;
	}
	
	//클라이언트로 부터 로그인 요청을 받을때
		@RequestMapping("loginon.do")
		public String loginon(@RequestParam String id, @RequestParam String pass, HttpSession session){
			MemberDto userInfo = dao.loginon(id, pass);
			String addr = null;
			if(userInfo != null){
				session.setAttribute("userInfo", userInfo);
				ModelAndView mav = new ModelAndView();
				mav.addObject(userInfo);
				mav.setViewName("redirect:home.do");
				addr = "redirect:home.do";
			}else{
				addr = "/login/loginfail.tiles";	
			}

			
			return addr;
		}
		
		//로그아웃 요청시
		@RequestMapping("logout.do")
		public ModelAndView logout(HttpSession session){
			session.setAttribute("userInfo", null);

			return new ModelAndView("redirect:/home.do");
		}
		
		@RequestMapping("mypage.do")
		public ModelAndView mypage(){
			return new ModelAndView("/mypage/mypage.tiles");
		}

}
