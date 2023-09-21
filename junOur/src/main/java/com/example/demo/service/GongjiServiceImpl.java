package com.example.demo.service;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.example.demo.mapper.GongjiMapper;
import com.example.demo.vo.GongjiVo;

@Service
@Qualifier("gongs")
public class GongjiServiceImpl implements GongjiService {
		@Autowired
		private GongjiMapper mapper;

		@Override
		public String gongji_list(Model model, HttpSession session) {
			if(session.getAttribute("userid")==null)
			{
				return "redirect:/member/login";
			}
			else
			{
				ArrayList<HashMap> glist=mapper.glist();
				String userid=session.getAttribute("userid").toString();
				model.addAttribute("glist",glist);
				return "/gongji/gongji_list";
			}
		}

		@Override
		public String gongjiadd() {
			
			return "/gongji/gongjiadd";
		}

		@Override
		public String gongjiadd_ok(HttpServletRequest request) {
			
			return "redirect:/gongji/gongjiadd";
		}

		@Override
		public String gongji_content(Model model, GongjiVo gvo) {
			model.addAttribute("gvo",mapper.content(gvo));
			return "/gongji/gongji_content";
		}

		@Override
		public String readnum(GongjiVo gvo, HttpServletRequest request) {
			String no=request.getParameter("no");
			mapper.readnum(gvo);
			return "redirect:/gongji/gongji_content?no="+no;
		}

		@Override
		public String delete(GongjiVo gvo) {
			mapper.delete(gvo);
			return "redirect:/gongji/gongji_list";
		}

		@Override
		public String gongji_update(GongjiVo gvo, Model model) {
			model.addAttribute("gvo",mapper.gongji_update(gvo));
			return "/gongji/gongji_update";
		}

		@Override
		public String gongji_update_ok(HttpServletRequest request, GongjiVo gvo) {
			String no=request.getParameter("no");
			mapper.gongji_update_ok(gvo);
			return "redirect:/gongji/gongji_content?no="+no;
		}
}




