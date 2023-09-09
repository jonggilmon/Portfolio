package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.GongjiService;
import com.example.demo.vo.GongjiVo;

@Controller
public class GongjiController {
	@Autowired
	@Qualifier("gongs")
	private GongjiService service;
	
	@RequestMapping("/admin/gongji/gongji_list")
	public String gongji_list(Model model)
	{
		return service.gongji_list(model);
	}
	
	@RequestMapping("/admin/gongji/readnum")
	public String readnum(GongjiVo gvo, HttpServletRequest request)
	{
		return service.readnum(gvo, request);
	}
	
	@RequestMapping("/admin/gongji/gongji_content")
	public String gongji_content(Model model, GongjiVo gvo)
	{
		return service.gongji_content(model, gvo);
	}
	
	@RequestMapping("/admin/gongji/delete")
	public String delete(GongjiVo gvo)
	{
		return service.delete(gvo);
	}
	
	@RequestMapping("/admin/gongji/gongji_update")
	public String gongji_update(GongjiVo gvo, Model model)
	{
		return service.gongji_update(gvo, model);
	}
	
	@RequestMapping("/admin/gongji/gongji_update_ok")
	public String gongji_update_ok(HttpServletRequest request, GongjiVo gvo)
	{
		return service.gongji_update_ok(request, gvo);
	}
	
}




