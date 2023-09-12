package com.example.demo.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.example.demo.vo.GongjiVo;

public interface GongjiService {
	public String gongji_list(Model model, HttpSession session);
	public String gongjiadd();
	public String gongjiadd_ok(HttpServletRequest request);
	public String gongji_content(Model model, GongjiVo gvo);
	public String readnum(GongjiVo gvo, HttpServletRequest request);
	public String delete(GongjiVo gvo);
	public String gongji_update(GongjiVo gvo, Model model);
	public String gongji_update_ok(HttpServletRequest request, GongjiVo gvo);
}
