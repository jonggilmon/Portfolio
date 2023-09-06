package com.example.demo.service;


import java.util.List;

import org.springframework.ui.Model;

import com.example.demo.vo.ContentVo;
import com.example.demo.vo.MemberVo;
import com.example.demo.vo.ReserveInfoVo;


public interface ContentService {
	
	
	public ContentVo getContentByNo(int no);

	public List<ContentVo> getAllReserve();
	public List<ContentVo> resung();

	
	List<ContentVo> getReservesByJongmokId(int jongmokId);

	



	public int insertAndGenerateReserveInfo(ReserveInfoVo reserveInfo);



	boolean scanPassword(MemberVo user, String inputPassword);





}
