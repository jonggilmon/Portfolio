package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.HugiService;
import com.example.demo.vo.HugiVo;

@Controller
public class HugiController {
	@Autowired
	@Qualifier("hugis")
	private HugiService service;
	
	@RequestMapping("/admin/hugi/hugi_list")
	public String hugi_list(Model model, HttpSession session)
	{
		return service.hugi_list(model, session);
	}
	
	@RequestMapping("/admin/hugi_list/hugiadd")
	public String hugiadd()
	{
		return service.hugiadd();
	}
	
	@RequestMapping("/admin/hugi_list/hugiadd_ok")
	public String hugiadd_ok(HugiVo hvo, HttpServletRequest request)
	{
		return service.hugiadd_ok(hvo, request);
	}
	
	@RequestMapping("/admin/hugi/hugi_content")
	public String hugi_content(Model model, HugiVo hvo)
	{
		return service.hugi_content(model, hvo);
	}
	
	@RequestMapping("/admin/hugi/readnum")
	public String readnum(HugiVo hvo, HttpServletRequest request)
	{
		return service.readnum(hvo, request);
	}
	
}




