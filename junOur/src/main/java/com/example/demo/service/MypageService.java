package com.example.demo.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;


import com.example.demo.vo.MtmVo;

import com.example.demo.vo.ContentVo;
import com.example.demo.vo.ReserveInfoVo;


public interface MypageService {

	public String myinfo(HttpSession session, Model model,HttpServletRequest request);

	public String chgName(HttpSession session, HttpServletRequest request);

	public String chgPhone(HttpSession session, HttpServletRequest request);

	public String chgEmail(HttpSession session, HttpServletRequest request);

	public String pwdChange(HttpServletRequest request, HttpSession session);

	
	public String mtm();
	
	public String mtmOk(MtmVo mvo,HttpSession session,HttpServletRequest request);
	
	public String inquiry_content(Model model,HttpServletRequest request);
	
	public String inquiry_list(Model model, HttpSession session);
	
	public String inquiryUpdate(HttpServletRequest request, Model model);
	
	public String inquiryDelete(HttpServletRequest request);


	public String myreserve(Model model,HttpSession session);
	
	public String inquiryUpdateOk(MtmVo vo);
	
	public String inquiry_all(Model model);
	
	public String inquiry_all_content(Model model,HttpServletRequest request);
}
