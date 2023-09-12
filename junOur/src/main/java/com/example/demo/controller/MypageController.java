package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.MypageService;
import com.example.demo.vo.MtmVo;

@Controller
public class MypageController {
	@Autowired
	@Qualifier("mys")
	private MypageService service;
	
	@RequestMapping("/mypage/myinfo")
	public String myinfo(HttpSession session,Model model,HttpServletRequest request)
	{
		return service.myinfo(session,model,request);
	}
	@RequestMapping("/mypage/chgName")
	public String chgName(HttpSession session,HttpServletRequest request)
	{
		return service.chgName(session,request);
	}
	@RequestMapping("/mypage/chgPhone")
	public String chgPhone(HttpSession session,HttpServletRequest request)
	{
		return service.chgPhone(session,request);
	}
	@RequestMapping("/mypage/chgEmail")
	public String chgEmail(HttpSession session,HttpServletRequest request)
	{
		return service.chgEmail(session,request);
	}
	@RequestMapping("/mypage/pwdChange")
	public String pwdChange(HttpServletRequest request,HttpSession session)
	{ 
		return service.pwdChange(request,session);
	}
	@RequestMapping("/mypage/mtm")
	public String mtm()
	{
		return service.mtm();
	}
	@RequestMapping("/mypage/mtmOk")
	public String mtmOk(MtmVo mvo,HttpSession session)
	{
		return service.mtmOk(mvo,session);
	}
	
}
