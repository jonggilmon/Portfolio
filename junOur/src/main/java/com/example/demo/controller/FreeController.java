package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.FreeService;
import com.example.demo.vo.FreeVo;

@Controller
public class FreeController {
	@Autowired
	@Qualifier("frees")
	private FreeService service;
	
	@RequestMapping("/free/free_list")
	public String free_list(Model model, HttpServletRequest request)
	{
		return service.free_list(model, request);
	}
	
	@RequestMapping("/free/freeadd")
	public String freeadd()
	{
		return "/free/freeadd";
	}
	
	@RequestMapping("/free/freeadd_ok")
	public String freeadd_ok(FreeVo fvo)
	{
		return service.freeadd_ok(fvo);
	}
	
	@RequestMapping("/free/free_content")
	public String free_content(Model model, FreeVo fvo, HttpServletRequest reqeust)
	{
		return service.free_content(model, fvo, reqeust);
	}
	
	@RequestMapping("/free/readnum")
	public String readnum(FreeVo fvo, HttpServletRequest request)
	{
		return service.readnum(fvo, request);
	}
	
	@RequestMapping("/free/delete")
	public String delete(FreeVo fvo, HttpServletRequest request)
	{
		return service.delete(fvo, request);
	}
	
	@RequestMapping("/free/free_update")
	public String free_update(FreeVo fvo, Model model, HttpServletRequest request)
	{
		return service.free_update(fvo, model, request);
	}
	
	@RequestMapping("/free/free_update_ok")
	public String free_update_ok(HttpServletRequest request, FreeVo fvo)
	{
		return service.free_update_ok(request, fvo);
	}
	
}




