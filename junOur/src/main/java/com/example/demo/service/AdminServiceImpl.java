package com.example.demo.service;

import java.io.FileNotFoundException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.util.ResourceUtils;

import com.example.demo.mapper.AdminMapper;
import com.example.demo.vo.ActionVo;
import com.example.demo.vo.AdminVo;
import com.example.demo.vo.GongjiVo;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Service
@Qualifier("admin")
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminMapper mapper;

	@Override
	public String contentadd() {
		
		return "/admin/content/contentadd";
	}

	@Override
	public String contentAddOk(HttpServletRequest request) {
	    int size=1024*1024*100;
	    try
	    {
	        String path=ResourceUtils.getFile("classpath:static/content").toPath().toString();
	        System.out.println(path);
	        MultipartRequest multi=new MultipartRequest(request,path,size,"utf-8",new DefaultFileRenamePolicy());
	        AdminVo avo=new AdminVo();

	        avo.setImg(multi.getFilesystemName("img"));
	        avo.setRsdate(Integer.parseInt(multi.getParameter("rsdate")));
	        avo.setSogae(multi.getParameter("sogae"));
	        avo.setJinhang(multi.getParameter("jinhang"));
	        avo.setRule(multi.getParameter("rule"));
	        avo.setInwon(Integer.parseInt(multi.getParameter("inwon")));
	        avo.setJongmok(multi.getParameter("jongmok"));
	        avo.setRstime(Integer.parseInt(multi.getParameter("rstime")));
	        avo.setTitle(multi.getParameter("title"));
	        avo.setJongmok_id(Integer.parseInt(multi.getParameter("jongmok_id")));

	        mapper.contentAddOk(avo);
	        
	    } 
	    catch (Exception e)
	    {
	        e.printStackTrace();
	    }
	    return "redirect:/admin/content/contentadd";
	}
	@Override
	public List<AdminVo> memberView() {
		return mapper.memberView();
	}
	
	@Override
	public String action_write() {
		
		return "/admin/action/action_write";
	}

	@Override
	public String action_write_ok(HttpServletRequest request) {
		int size= 1024 * 1024 * 100;
		try
		{
			String path = ResourceUtils.getFile("classpath:static/action").toPath().toString();
			MultipartRequest mul = new MultipartRequest(request, path,size,"utf-8",new DefaultFileRenamePolicy());
			ActionVo acvo = new ActionVo();
			
			acvo.setUserid(mul.getParameter("userid"));
			acvo.setTitle(mul.getParameter("title"));
			acvo.setContent(mul.getParameter("content"));
			acvo.setImg(mul.getFilesystemName("img"));
			
			mapper.action_write_ok(acvo);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "redirect:/admin/action/action_write";
	}


	@Override
	public String action_list(Model model) {
		model.addAttribute("list",mapper.action_list());
		return "/admin/action/action_list";
	}

	@Override
	public String action_readnum(HttpServletRequest request, ActionVo avo) {
		String no= request.getParameter("no");
		mapper.action_readnum(avo);
		return "redirect:/admin/action/action_content?no="+no;
	}

	@Override
	public String action_content(Model model, ActionVo avo,HttpSession session) {
		String userid = session.getAttribute("userid").toString();
		model.addAttribute("avo",mapper.action_content(avo));
		return "/admin/action/action_content";
	}

	@Override
	public String action_delete(ActionVo avo) {
		mapper.action_delete(avo);
		return "redirect:/admin/action/action_list";
	}

	@Override
	public String action_update(ActionVo avo,Model model) {
		model.addAttribute("avo",mapper.action_update(avo));
		return "/admin/action/action_update";
	}

	@Override
	public String action_update_ok(HttpServletRequest request, ActionVo avo) {
		String no = request.getParameter("no");
		mapper.action_update_ok(avo);
		return "redirect:/admin/action/action_content?no="+no;
	}
	@Override
	public String gongjiAddOk(GongjiVo gvo) {
		
		mapper.gongjiAddOk(gvo);
		
		return "redirect:/gongji/list";
	}

	
}

