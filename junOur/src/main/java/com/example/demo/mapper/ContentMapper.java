package com.example.demo.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.ContentVo;
import com.example.demo.vo.MemberVo;

@Mapper
public interface ContentMapper {

	public List<ContentVo> getAllReserve();
	
	public ContentVo getContentByNo(int no);
	
	public List<ContentVo> getReservesByJongmokId(int jongmokId);
	
	public List<ContentVo> resung();
	
	public int getMaxinwonNo(int no);
	
	public List<ContentVo> findReservesByRsDate(String rsdate);

	public void increaseReadNum(int no);

	public List<ContentVo> findReservesByRsDateAndJongmokId(String rsdate, String jongmok_id);

	public void addjjim(String no, String userid);

	public void deljjim(String no, String userid);

	public boolean isjjim(int no, String userid);


	


}
