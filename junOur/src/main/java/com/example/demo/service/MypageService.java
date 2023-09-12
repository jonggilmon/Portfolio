package com.example.demo.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.example.demo.vo.ContentVo;
import com.example.demo.vo.ReserveInfoVo;

public interface MypageService {

	public String myinfo(HttpSession session, Model model,HttpServletRequest request);

	public String chgName(HttpSession session, HttpServletRequest request);

	public String chgPhone(HttpSession session, HttpServletRequest request);

	public String chgEmail(HttpSession session, HttpServletRequest request);

	public String pwdChange(HttpServletRequest request, HttpSession session);

	public String myreserve(Model model);

}
