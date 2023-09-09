package com.example.demo.controller;

import java.net.http.HttpRequest;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.AdminService;
import com.example.demo.service.ContentService;
import com.example.demo.vo.ActionVo;
import com.example.demo.vo.AdminVo;
import com.example.demo.vo.GongjiVo;

@Controller
public class AdminController {

	@Autowired
	@Qualifier("admin")
	private AdminService service;
	
	@RequestMapping("/admin/content/contentadd")
	public String contentadd()
	{
		return service.contentadd();
	}
	
	@RequestMapping("/admin/content/contentAddOk")
	public String contentAddOk(@ModelAttribute AdminVo adminVo, HttpServletRequest request)
	{	
		System.out.println("jongmok_id value: " + adminVo.getJongmok());	
		return service.contentAddOk(request);
	}
	@RequestMapping("/admin/member/memberView")
	public String memberview(Model model) {
		  System.out.println("memberview method is called!");
	    List<AdminVo> members = service.memberView();
	    model.addAttribute("members", members);
	    System.out.println("Number of members: " + members.size());
	    return "/admin/member/memberView"; 
	}
	@RequestMapping("/admin/action/action_write")
	public String action_write()
	{
		return service.action_write();
	}
	@RequestMapping("/admin/action/action_write_ok")
	public String action_write_ok(HttpServletRequest request)
	{
		return service.action_write_ok(request);
	}
	@RequestMapping("admin/action/action_list")
	public String action_list(Model model,HttpSession session)
	{
		return service.action_list(model,session);
	}
	@RequestMapping("/admin/action/action_readnum")
	public String action_readnum(HttpServletRequest request, ActionVo avo)
	{
		return service.action_readnum(request,avo);
	}
	@RequestMapping("/admin/action/action_content")
	public String action_content(Model model,ActionVo avo,HttpSession session)
	{
		return service.action_content(model,avo,session);
	}
	@RequestMapping("/admin/action/action_delete")
	public String action_delete(ActionVo avo)
	{
		return service.action_delete(avo);
	}
	@RequestMapping("/admin/action/action_update")
	public String action_update(ActionVo avo,Model model)
	{
		return service.action_update(avo,model);
	}
	@RequestMapping("/admin/action/action_update_ok")
	public String action_update_ok(HttpServletRequest request,ActionVo avo)
	{
		return service.action_update_ok(request,avo);
	}
	
	@RequestMapping("/admin/gongji/gongjiadd")
	public String gongji()
	{
		return "/admin/gongji/gongjiadd";
	}
	
	@RequestMapping("/admin/gongji/gongjiAddOk")
	public String gongjiAddOk(GongjiVo gvo)
	{
		return service.gongjiAddOk(gvo);
	}
}
