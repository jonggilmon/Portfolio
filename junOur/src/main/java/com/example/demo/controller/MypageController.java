package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.MypageService;

import com.example.demo.vo.MtmVo;

import com.example.demo.vo.ContentVo;
import com.example.demo.vo.ReserveInfoVo;


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
	public String mtmOk(MtmVo mvo,HttpSession session,HttpServletRequest request)
	{
		return service.mtmOk(mvo,session,request);
	}
	@RequestMapping("/mypage/inquiry_content")
	public String inquiry_content(Model model,HttpServletRequest request)
	{
		return service.inquiry_content(model,request);
	}
	@RequestMapping("/mypage/inquiry_list")
	public String inquiry_list(Model model,HttpSession session)
	{
		return service.inquiry_list(model,session);
	}
	@RequestMapping("/mypage/inquiry_select")
	public String inquiry_select()
	{
		return "/mypage/inquiry_select";
	}
	@RequestMapping("/mypage/inquiryUpdate")
	public String inquiryUpdate(HttpServletRequest request, Model model)
	{
		return service.inquiryUpdate(request,model);
	}
	@RequestMapping("/mypage/inquiryDelete")
	public String inquiryDelete(HttpServletRequest request)
	{
		return service.inquiryDelete(request);
	}
	@RequestMapping("/mypage/mypage")
	public String mypage()
	{
		return "/mypage/mypage";
	}
	@RequestMapping("/mypage/myreserve")
	public String myreserve(Model model,HttpSession session)
	{
		return service.myreserve(model,session);

	}

	@RequestMapping("/mypage/inquiryUpdateOk")
	public String inquiryUpdateOk(MtmVo mvo)
	{
		return service.inquiryUpdateOk(mvo);
	}
	@RequestMapping("mypage/inquiry_all")
	public String inquiry_all(Model model)
	{
		return service.inquiry_all(model);
	}
	@RequestMapping("mypage/inquiry_all_content")
	public String inquiry_all_content(Model model,HttpServletRequest request)
	{
		return service.inquiry_all_content(model,request);
	}
	

	@RequestMapping("/mypage/myjjim")
	public String myjjim(HttpSession session,Model model)
	{
		return service.myjjim(session,model);
	}
	@RequestMapping("/mypage/selectDel")
	public @ResponseBody String selectDel(HttpServletRequest request)
	{
		return service.selectDel(request);
	}
	@RequestMapping("/mypage/jjimDel")
	public String jjimDel(HttpServletRequest request)
	{
		return service.jjimDel(request);
	}

}
