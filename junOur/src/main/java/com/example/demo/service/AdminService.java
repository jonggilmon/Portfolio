package com.example.demo.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.example.demo.vo.ActionVo;
import com.example.demo.vo.AdminVo;
import com.example.demo.vo.GongjiVo;
import com.example.demo.vo.QuestVo;

public interface AdminService {
	public String contentadd();
	public String contentAddOk(HttpServletRequest request);
	public List<AdminVo> memberView();
	public String action_write();
	public String action_write_ok(HttpServletRequest request);
	public String action_list(Model model,HttpSession session);
	public String action_readnum(HttpServletRequest request, ActionVo avo);
	public String action_content(Model model, ActionVo avo,HttpSession session);
	public String action_delete(ActionVo avo);
	public String action_update(ActionVo avo,Model model);
	public String action_update_ok(HttpServletRequest request, ActionVo avo);
	public String gongjiAddOk(GongjiVo gvo);
	public boolean banMember(String userid);
	public String list(Model model);
	public String answer(HttpServletRequest request,Model model);
	public String questOk(HttpServletRequest request,QuestVo qvo);
}
