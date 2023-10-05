package com.example.demo.service;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.example.demo.mapper.FreeMapper;
import com.example.demo.vo.FreeVo;

@Service
@Qualifier("frees")
public class FreeServiceImpl implements FreeService {

	@Autowired
	private FreeMapper mapper;
	
	@Override
	public String free_list(Model model,HttpServletRequest request) {
		
		int page;
		if(request.getParameter("page")==null) {
			page=1;
		}
		else {
			page=Integer.parseInt(request.getParameter("page"));
		}
		
		int start=(page-1)*10;
		int pstart=page/10;
		if(page%10==0)
			pstart--;
		
		pstart=pstart*10+1;
		
		int pend=pstart+9;
		
		int chong=mapper.getChong();
		if(pend>chong)
			pend=chong;
		model.addAttribute("page",page);
		model.addAttribute("pstart",pstart);
		model.addAttribute("pend",pend);
		model.addAttribute("chong",chong);
		model.addAttribute("flist",mapper.flist(start));
	    
	    return "/free/free_list";
	}
	
	@Override
	public String freeadd() {
		return "/free/freeadd";
	}

	@Override
	public String freeadd_ok(FreeVo fvo) {
		mapper.freeadd_ok(fvo);
		return "redirect:/free/free_list";
	}

	@Override
	public String free_content(Model model, FreeVo fvo, HttpServletRequest request) {
		String page=request.getParameter("page");
		String chk=request.getParameter("chk");
		model.addAttribute("page",page);
		model.addAttribute("chk",chk);
		model.addAttribute("fvo",mapper.content(fvo));
		return "/free/free_content";
	}
	
	@Override
	public String readnum(FreeVo fvo, HttpServletRequest request) {
		String page=request.getParameter("page");
		mapper.readnum(fvo);
		return "redirect:/free/free_content?no="+fvo.getNo()+"&page="+page;
	}
	
	@Override
	public String delete(FreeVo fvo ,HttpServletRequest request) {
		int no=Integer.parseInt(request.getParameter("no"));
		String page=request.getParameter("page");
		String chk=request.getParameter("chk");
		String pwd=request.getParameter("pwd");
		String pwd2=mapper.isPwd(no);
		if(pwd.equals(pwd2))
		{
			mapper.delete(fvo);
			return "redirect:/free/free_list?&page="+page;
		}
		else
		{
			return "redirect:/free/free_content?chk=1&no="+fvo.getNo()+"&page="+page;
		}
		
	}
	
	@Override
	public String free_update(FreeVo fvo, Model model, HttpServletRequest request) {
		String page=request.getParameter("page");
		String chk=request.getParameter("chk");
		model.addAttribute("page",page);
		model.addAttribute("chk",chk);
		model.addAttribute("fvo",mapper.free_update(fvo));
		return "/free/free_update";
	}

	@Override
	public String free_update_ok(HttpServletRequest request, FreeVo fvo) {
		int no=Integer.parseInt(request.getParameter("no"));
		String page=request.getParameter("page");
		String chk=request.getParameter("chk");
		String pwd=request.getParameter("pwd");
		String pwd2=mapper.isPwd(no);
		if(pwd.equals(pwd2))
		{
		    mapper.free_update_ok(fvo);
		    return "redirect:/free/free_content?no="+fvo.getNo()+"&page="+page;
		}
		else
		{
			return "redirect:/free/free_update?chk=1&no="+fvo.getNo()+"&page="+page;
		}
	}
	
	
}




