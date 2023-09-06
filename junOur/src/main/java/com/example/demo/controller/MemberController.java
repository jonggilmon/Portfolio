package com.example.demo.controller;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.MemberService;
import com.example.demo.vo.MemberVo;
 

@Controller
public class MemberController {

	@Autowired
	@Qualifier("mems")
	private MemberService service;
	
	@RequestMapping("/member/member")
	public String member()
	{
		return service.member();
	}
	
	@RequestMapping("/member/useridCheck")
	public @ResponseBody int useridCheck(MemberVo mvo)
	{
		return service.useridCheck(mvo);
	}
	
	 
	 @RequestMapping("/member/memberOk") 
	 public String memberOk(MemberVo mvo) 
	 {
	    return service.memberOk(mvo);
	 }
	
	 @RequestMapping("/member/login")
	 public String login()
	 {
		 return service.login();
	 }
	 
	 @RequestMapping("/member/loginOk")
	 public String loginOk(MemberVo mvo, HttpSession session) {
	     String result = service.loginOk(mvo, session);
	   
	     
	     if ("redirect:/member/login?chk=1".equals(result)) {
	         return "/member/login";
	     } else {
	         session.setAttribute("userid", mvo.getUserid());
	         return "redirect:/main/main";
	     }
	 }
	

	 
	 @RequestMapping("/member/logout")
	 public String logout(HttpSession session)
	 {
		
		 return service.logout(session);
	 }
	
}




