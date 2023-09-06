package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.GongjiService;

@Controller
public class GongjiController {
	@Autowired
	@Qualifier("gongs")
	private GongjiService service;
	
	@RequestMapping("/gongji/list")
	public String list(Model model)
	{
		return service.list(model);
	}
}
