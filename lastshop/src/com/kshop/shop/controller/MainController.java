package com.kshop.shop.controller;

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kshop.shop.model.LoginDao;
import com.kshop.shop.model.MemberDto;



@Controller
public class MainController {
	
	LoginDao dao;
	

	public void setDao(LoginDao dao) {
		this.dao = dao;
	}

	@RequestMapping("home.do")
	public ModelAndView test(){
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("home.tiles");
		
		return mav;
	}
	
	//�α��� ������ �̵�
	@RequestMapping("login.do")
	public ModelAndView login(){
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("/login/login.tiles");
		
		return mav;
	}
	
	//Ŭ���̾�Ʈ�� ���� �α��� ��û�� ������
		@RequestMapping("loginon.do")
		public ModelAndView loginon(@RequestParam String id, @RequestParam String pass, HttpSession session){
			MemberDto userInfo = dao.loginon(id, pass);
		
			if(userInfo != null){
				session.setAttribute("userInfo", userInfo);
			}
			
			ModelAndView mav = new ModelAndView();
			mav.addObject(userInfo);
			mav.setViewName("redirect:home.do");
			
			return mav;
		}
		
		//�α׾ƿ� ��û��
		@RequestMapping("logout.do")
		public ModelAndView logout(HttpSession session){
			session.setAttribute("userInfo", null);

			return new ModelAndView("redirect:/home.do", null);
		}

}
