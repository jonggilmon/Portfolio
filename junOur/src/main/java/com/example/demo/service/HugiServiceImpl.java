package com.example.demo.service;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.example.demo.mapper.HugiMapper;
import com.example.demo.vo.HugiVo;

@Service
@Qualifier("hugis")
public class HugiServiceImpl implements HugiService {

	@Autowired
	private HugiMapper mapper;
	
	@Override
	public String hugi_list(Model model) {
		model.addAttribute("hlist",mapper.hlist());
		return "/admin/hugi/hugi_list";
	}

	@Override
	public String hugiadd() {
		return "/admin/hugi/hugiadd";
	}

	@Override
	public String hugiadd_ok(HugiVo hvo) {
		mapper.hugiadd_ok(hvo);
		return "redirect:/admin/hugi/hugi_list";
	}

	@Override
	public String hugi_content(Model model, HugiVo hvo) {
		model.addAttribute("hvo",mapper.content(hvo));
		return "/admin/hugi/hugi_content";
	}
	
	@Override
	public String readnum(HugiVo hvo, HttpServletRequest request) {
		String no=request.getParameter("no");
		mapper.readnum(hvo);
		return "redirect:/admin/hugi/hugi_content?no="+no;
	}
	
	@Override
	public String delete(HugiVo hvo) {
		mapper.delete(hvo);
		return "redirect:/admin/hugi/hugi_list";
	}
	
	@Override
	public String hugi_update(HugiVo hvo, Model model) {
		model.addAttribute("hvo",mapper.hugi_update(hvo));
		return "/admin/hugi/hugi_update";
	}

	@Override
	public String hugi_update_ok(HttpServletRequest request, HugiVo hvo) {
		String no=request.getParameter("no");
		mapper.hugi_update_ok(hvo);
		return "redirect:/admin/hugi/hugi_content?no="+no;
	}
	
	
}




