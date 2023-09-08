package com.example.demo.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface GongjiService {
	public String gongji_list(Model model);
	public String gongjiadd();
	public String gongjiadd_ok(HttpServletRequest request);
}
