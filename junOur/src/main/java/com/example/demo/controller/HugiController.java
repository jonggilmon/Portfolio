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
	public String hugi_list(Model model)
	{
		return service.hugi_list(model);
	}
	
	@RequestMapping("/admin/hugi/hugiadd")
	public String hugiadd()
	{
		return "/admin/hugi/hugiadd";
	}
	
	@RequestMapping("/admin/hugi/hugiadd_ok")
	public String hugiadd_ok(HugiVo hvo)
	{
		return service.hugiadd_ok(hvo);
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
	
	@RequestMapping("/admin/hugi/delete")
	public String delete(HugiVo hvo)
	{
		return service.delete(hvo);
	}
	
	@RequestMapping("/admin/hugi/hugi_update")
	public String hugi_update(HugiVo hvo, Model model)
	{
		return service.hugi_update(hvo, model);
	}
	
	@RequestMapping("/admin/hugi/hugi_update_ok")
	public String hugi_update_ok(HttpServletRequest request, HugiVo hvo)
	{
		return service.hugi_update_ok(request, hvo);
	}
}




