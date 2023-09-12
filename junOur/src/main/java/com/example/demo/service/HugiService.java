package com.example.demo.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.example.demo.vo.HugiVo;

public interface HugiService {
	public String hugi_list(Model model, HttpSession session);
	public String hugiadd();
	public String hugiadd_ok(HugiVo hvo, HttpServletRequest request);
	public String hugi_content(Model model, HugiVo hvo);
	public String readnum(HugiVo hvo, HttpServletRequest request);
	
	
}




