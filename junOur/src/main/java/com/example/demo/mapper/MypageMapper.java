package com.example.demo.mapper;

import java.util.ArrayList;


import com.example.demo.vo.MemberVo;
import com.example.demo.vo.MtmVo;
import com.example.demo.vo.QuestVo;

import com.example.demo.vo.ContentVo;
import com.example.demo.vo.MemberVo;
import com.example.demo.vo.ReserveInfoVo;


public interface MypageMapper {
	public MemberVo myinfo(String userid);

	public void chgName(String name, String userid);

	public void chgPhone(String phone, String userid);

	public void chgEmail(String email, String userid);

	public boolean isPwd(String pwd, String userid);

	public void pwdChange(String pwd, String userid);

	
	public void mtmOk(MtmVo mvo);
	
	public MtmVo inquiry_content(String no);
	
	public ArrayList<MtmVo> inquiry_list(String userid);
	
	public MtmVo inquiryUpdate(String no);
	
	public void inquiryDelete(String no);
	
	public QuestVo getQuest(String no);


	public ArrayList<ReserveInfoVo> myreserve(String userid);

	



}
