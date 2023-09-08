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
	
}




