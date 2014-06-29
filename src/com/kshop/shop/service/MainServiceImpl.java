package com.kshop.shop.service;

import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.kshop.shop.model.CategoryDao;
import com.kshop.shop.model.LoginDao;
import com.kshop.shop.model.MemberDto;

public class MainServiceImpl implements MainService {
	
	LoginDao dao;
	CategoryDao categories;

	public void setCategories(CategoryDao categories) {
		this.categories = categories;
	}

	public void setDao(LoginDao dao) {
		this.dao = dao;
	}
	
    private static MainServiceImpl instance = new MainServiceImpl();
    
    private MainServiceImpl() {} 
    
    public static MainServiceImpl getInstance() {         
    	return instance;     
    } 
	
	@Override
	public String loginon(String id, String pass) {
		System.out.println(id+pass+"서비스임플");
		MemberDto userInfo = dao.loginon(id, pass);
		String addr = null;
		if(userInfo != null){
			HttpSession session = null;
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



}
