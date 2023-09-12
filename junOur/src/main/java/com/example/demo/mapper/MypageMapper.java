package com.example.demo.mapper;

import com.example.demo.vo.MemberVo;
import com.example.demo.vo.MtmVo;

public interface MypageMapper {
	public MemberVo myinfo(String userid);

	public void chgName(String name, String userid);

	public void chgPhone(String phone, String userid);

	public void chgEmail(String email, String userid);

	public boolean isPwd(String pwd, String userid);

	public void pwdChange(String pwd, String userid);
	
	public void mtmOk(MtmVo mvo);
}
