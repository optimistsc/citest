package com.kshop.shop.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;




import com.kshop.shop.model.Fir_CategoryDto;
import com.kshop.shop.model.ItemDto;
import com.kshop.shop.model.JoinDto;
import com.kshop.shop.model.MainDao;
import com.kshop.shop.model.MemberDto;
import com.kshop.shop.model.Sec_CategoryDto;
import com.kshop.shop.model.Thr_CategoryDto;



@Controller
public class MainController {
	
	MainDao dao;

	public void setDao(MainDao dao) {
		this.dao = dao;
	}

	@RequestMapping("home.do")
	public ModelAndView home(HttpSession session){
		//dbī�װ��� �ҷ��� ���ǿ� ����
		List<Fir_CategoryDto> list1 = dao.getFir_Category();
		List<Sec_CategoryDto> list2 = dao.getSec_Category();
		List<Thr_CategoryDto> list3 = dao.getThr_Category();
		session.setAttribute("category1", list1);
		session.setAttribute("category2", list2);
		session.setAttribute("category3", list3);
		List<ItemDto> list = dao.newitemlist();
		
		for(int i=0;i<list.size();i++){
		list.get(i).setRo(i+1);
		}
		
		System.out.println(list.size()+"�����۸���Ʈ������!!");
		ModelAndView mav = new ModelAndView();
		mav.addObject("itemlist", list);
		mav.setViewName("home.tiles");
		
		return mav;
	}
	//����������
	@RequestMapping("join.do")
	public ModelAndView join(){
		System.out.println("1");
		ModelAndView mav = new ModelAndView();

		mav.setViewName("/join/join.tiles");
		
		return mav;
	}
	//ȸ�����Կ��� �Ѿ��
	@RequestMapping("joinon.do")
	public ModelAndView joinon(JoinDto jdto){
		
		dao.join(jdto);
//		System.out.println(result);
		
		ModelAndView mav = new ModelAndView();

		mav.setViewName("/join/joinok.tiles");
		
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
		public String loginon(@RequestParam String id, @RequestParam String pass, HttpSession session){
			MemberDto userInfo = dao.loginon(id, pass);

			String addr = null;
			if(userInfo != null){
				session.setAttribute("userInfo", userInfo);
				ModelAndView mav = new ModelAndView();
				mav.addObject(userInfo);
				//mav.setViewName("redirect:home.do");
				addr = "redirect:home.do";
			}else{
				addr = "/login/loginfail.tiles";	
			}

			
			return addr;
		}
		
		//�α׾ƿ� ��û��
		@RequestMapping("logout.do")
		public ModelAndView logout(HttpSession session){
			session.setAttribute("userInfo", null);

			return new ModelAndView("redirect:/home.do");
		}
		
		//������������ ��û��
		@RequestMapping("adminpage.do")
		public ModelAndView adminpage(){
			return new ModelAndView("/pages/adminpage.tiles");
		}
		
		//���������� ��û��
		@RequestMapping("mypage.do")
		public ModelAndView mypage(){
			return new ModelAndView("/pages/mypage.tiles");
		}

}
