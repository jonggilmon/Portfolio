package com.example.demo.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.example.demo.mapper.MainMapper;
import com.example.demo.vo.ActionVo;
import com.example.demo.vo.GongjiVo;
 

@Service
@Qualifier("mains")
public class MainServiceImpl  implements MainService{
	@Autowired
	private MainMapper mapper;

	@Override
	public String main(Model model) {
		
      ArrayList<ActionVo> alist = mapper.main();
		
		model.addAttribute("alist",alist);
		//System.out.println(alist.size());
		
		ArrayList<GongjiVo> glist=mapper.glist();
		model.addAttribute("glist", glist);
		return "/main/main";
	}
}
