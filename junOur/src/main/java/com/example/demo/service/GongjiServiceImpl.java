package com.example.demo.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.example.demo.mapper.GongjiMapper;

@Service
@Qualifier("gongs")
public class GongjiServiceImpl implements GongjiService {
		@Autowired
		private GongjiMapper mapper;

		@Override
		public String list(Model model) {
			ArrayList<HashMap> glist=mapper.glist();
			model.addAttribute("glist",glist);
			return "/gongji/list";
		}
}
