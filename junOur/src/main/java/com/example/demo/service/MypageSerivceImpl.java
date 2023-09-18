package com.example.demo.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.example.demo.mapper.MypageMapper;
import com.example.demo.vo.ContentVo;
import com.example.demo.vo.MemberVo;

import com.example.demo.vo.MtmVo;
import com.example.demo.vo.QuestVo;

import com.example.demo.vo.ReserveInfoVo;

@Service
@Qualifier("mys")
public class MypageSerivceImpl implements MypageService{
	
	@Autowired
	private MypageMapper mapper;
	
	@Override
	public String myinfo(HttpSession session, Model model,HttpServletRequest request) {
		String userid = session.getAttribute("userid").toString();
		MemberVo mvo =  mapper.myinfo(userid);
		model.addAttribute("err",request.getParameter("err"));
		model.addAttribute("mvo",mvo);
		return "/mypage/myinfo";
	}

	@Override
	public String chgName(HttpSession session, HttpServletRequest request) {
		String name = request.getParameter("name");
		String userid = session.getAttribute("userid").toString();
		mapper.chgName(name,userid);
		return "redirect:/mypage/myinfo";
	}

	@Override
	public String chgPhone(HttpSession session, HttpServletRequest request) {
		String phone = request.getParameter("phone");
		String userid = session.getAttribute("userid").toString();
		mapper.chgPhone(phone,userid);
		return "redirect:/mypage/myinfo";
	}

	@Override
	public String chgEmail(HttpSession session, HttpServletRequest request) {
		String email = request.getParameter("email");
		String userid = session.getAttribute("userid").toString();
		mapper.chgEmail(email,userid);
		return "redirect:/mypage/myinfo";
	}

	@Override
	public String pwdChange(HttpServletRequest request, HttpSession session) {
		String opwd=request.getParameter("opwd");
		String userid=session.getAttribute("userid").toString();
		if(mapper.isPwd(opwd,userid))
		{
			String pwd=request.getParameter("pwd");
			mapper.pwdChange(pwd,userid);
			return "redirect:/mypage/myinfo";
		}
		else
		{
			return "redirect:/mypage/myinfo?err=1";
		}
	}

	@Override

	public String mtm() 
	{
		return "/mypage/mtm";
	}

	@Override
	public String mtmOk(MtmVo mvo, HttpSession session) {
		String userid=session.getAttribute("userid").toString();
		mvo.setUserid(userid);
		mapper.mtmOk(mvo);
		
		return "/mypage/mtmOk";
	}

	@Override
	public String inquiry_content(Model model,HttpServletRequest request) {
		String no=request.getParameter("no");
		MtmVo mvo=mapper.inquiry_content(no);
		model.addAttribute("mvo",mvo);
		
		
		QuestVo qvo=mapper.getQuest(no);
		model.addAttribute("qvo" ,qvo);
		return "/mypage/inquiry_content";
	}

	@Override
	public String inquiry_list(Model model, HttpSession session) {
		String userid=session.getAttribute("userid").toString();
		model.addAttribute("ilist",mapper.inquiry_list(userid));
		return "/mypage/inquiry_list";
	}

	@Override
	public String inquiryUpdate(HttpServletRequest request, Model model) {
		String no=request.getParameter("no");
		model.addAttribute("ivo",mapper.inquiryUpdate(no));
		return "/mypage/inquiryUpdate";
		
	}

	@Override
	public String inquiryDelete(HttpServletRequest request) {
		String no=request.getParameter("no");
		mapper.inquiryDelete(no);
		return "redirect:/mypage/inquiry_list";
	}
	public String myreserve(Model model,HttpSession session) {
		//if(session.getAttribute("user_id")==null)
	//	{
		//	return "redirect:/member/login";
		//}
		//else
	//	{
		String userid = session.getAttribute("userid").toString();
		model.addAttribute("rlist",mapper.myreserve(userid));
		//}
		return "/mypage/myreserve";

	}

	@Override
	public String myjjim() {
		
		return "/mypage/myjjim";
	}
}






