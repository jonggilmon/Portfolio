package com.example.demo.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.example.demo.vo.FreeVo;

public interface FreeService {
	public String free_list(Model model, HttpServletRequest request);
	public String freeadd();
	public String freeadd_ok(FreeVo fvo);
	public String free_content(Model model, FreeVo fvo, HttpServletRequest reqeust);
	public String readnum(FreeVo fvo, HttpServletRequest request);
	public String delete(FreeVo fvo, HttpServletRequest request);
	public String free_update(FreeVo fvo, Model model, HttpServletRequest request);
	public String free_update_ok(HttpServletRequest request, FreeVo fvo);
	
}




