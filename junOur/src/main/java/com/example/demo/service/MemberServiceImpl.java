package com.example.demo.service;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.example.demo.mapper.MemberMapper;
import com.example.demo.vo.MemberVo;
 

@Service
@Qualifier("mems")
public class MemberServiceImpl  implements MemberService{
	@Autowired
	private MemberMapper mapper;

	@Override
	public String member() {
		return "/member/member";
	}

	@Override
	public int useridCheck(MemberVo mvo) {
		
		return mapper.useridCheck(mvo); 
	}

	@Override
	public String memberOk(MemberVo mvo) {

		mapper.memberOk(mvo); 
		return "/member/login";
	}

	@Override
	public String login() {
		 
		return "/member/login";
	}

	@Override
	public String loginOk(MemberVo mvo, HttpSession session) {
		String name=mapper.loginOk(mvo);
		if(name==null)
		{
			return "redirect:/member/login?chk=1";
		}
		else
		{
			session.setAttribute("userid", mvo.getUserid());
			session.setAttribute("name", name);
			
			
			 if ("admin123".equals(mvo.getUserid())) {
				
	                return "/admin/menu"; 
	            } else {
			
		
			return "redirect:/main/main";
		}
		}
	}

	@Override
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/main/main";
	}
	

	    
}







