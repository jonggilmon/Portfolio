package com.example.demo.service;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.example.demo.vo.ContentVo;
import com.example.demo.vo.MemberVo;
import com.example.demo.vo.ReserveInfoVo;


public interface ContentService {
	
	
	public ContentVo getContentByNo(int no);

	
	public List<ContentVo> resung();

	
	List<ContentVo> getReservesByJongmokId(int jongmokId);

	public List<ContentVo> getAllReserve();

	
	public int insertAndGenerateReserveInfo(ReserveInfoVo reserveInfo);

	 

	boolean scanPassword(MemberVo user, String inputPassword);


	public void increaseReadNum(int no);


	public String addjjim(HttpServletRequest request, HttpSession session);


	public String deljjim(HttpServletRequest request, HttpSession session);

	





}
