package com.example.demo.service;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.example.demo.mapper.FreeMapper;
import com.example.demo.vo.FreeVo;

@Service
@Qualifier("frees")
public class FreeServiceImpl implements FreeService {

	@Autowired
	private FreeMapper mapper;
	
	@Override
	public String free_list(Model model) {
		model.addAttribute("flist",mapper.flist());
		return "/admin/free/free_list";
	}

	@Override
	public String freeadd() {
		return "/admin/free/freeadd";
	}

	@Override
	public String freeadd_ok(FreeVo fvo) {
		mapper.freeadd_ok(fvo);
		return "redirect:/admin/free/free_list";
	}

	@Override
	public String free_content(Model model, FreeVo fvo, HttpServletRequest request) {
		String no=request.getParameter("no");
		model.addAttribute("chk",request.getParameter("chk"));
		model.addAttribute("fvo",mapper.content(fvo));
		return "/admin/free/free_content";
	}
	
	@Override
	public String readnum(FreeVo fvo, HttpServletRequest request) {
		String no=request.getParameter("no");
		mapper.readnum(fvo);
		return "redirect:/admin/free/free_content?no="+no;
	}
	
	@Override
	public String delete(FreeVo fvo ,HttpServletRequest reqeust) {
		int no=Integer.parseInt(reqeust.getParameter("no"));
		String pwd=reqeust.getParameter("pwd");
		if(mapper.isPwd(pwd, no))
		{
			mapper.delete(fvo, reqeust, no);
			return "redirect:/admin/free/free_list?no="+fvo.getNo();
		}
		else
		{
			return "redirect:/admin/free/free_content?chk=1&no="+no;
		}
		
	}
	
	@Override
	public String free_update(FreeVo fvo, Model model, HttpServletRequest request) {
		String no=request.getParameter("no");
		model.addAttribute("chk",request.getParameter("chk"));
		model.addAttribute("fvo",mapper.free_update(fvo));
		return "/admin/free/free_update";
	}

	@Override
	public String free_update_ok(HttpServletRequest request, FreeVo fvo) {
		String no=request.getParameter("no");
		if(mapper.isPwd(fvo.getPwd(), fvo.getNo()))
		{
		    mapper.free_update_ok(fvo);
		    return "redirect:/admin/free/free_content?no="+fvo.getNo();
		}
		else
		{
			return "redirect:/admin/free/free_update?chk=1&no="+fvo.getNo();
		}
	}
	
	
}




