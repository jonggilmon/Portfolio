package com.example.demo.service;

import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.HashMap;
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
import com.example.demo.vo.FreeVo;
import com.example.demo.vo.GongjiVo;
import com.example.demo.vo.MtmVo;
import com.example.demo.vo.QuestVo;
import com.example.demo.vo.ReserveInfoVo;
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
	    try {
	        String path=ResourceUtils.getFile("classpath:static/content").toPath().toString();
	        System.out.println(path);
	        MultipartRequest multi=new MultipartRequest(request,path,size,"utf-8",new DefaultFileRenamePolicy());
	        AdminVo avo=new AdminVo();

	        avo.setImg(multi.getFilesystemName("img"));
	        
	        // 날짜 처리
	        String rsdateStr = multi.getParameter("rsdate");

	        // 입력 포맷 검증 (예: "2018년 3월 9일"이 올바른 형식인지 확인)
	        if(!rsdateStr.matches("\\d{4}-\\d{2}-\\d{2}")) {
	            throw new Exception("Invalid date format!");
	        }
	        avo.setRsdate(rsdateStr);
	        
	        avo.setSogae(multi.getParameter("sogae"));
	        avo.setJinhang(multi.getParameter("jinhang"));
	        avo.setRule(multi.getParameter("rule"));
	        avo.setInwon(Integer.parseInt(multi.getParameter("inwon")));
	        avo.setAddress(multi.getParameter("address"));

	        // "rstime" 값 변환: 예) "11:00" -> 1100, "09:00" -> 0900
	        String[] timeParts = multi.getParameter("rstime").split(":");
	        String timeStr = String.format("%02d%02d", Integer.parseInt(timeParts[0]), Integer.parseInt(timeParts[1]));
	        avo.setRstime(timeStr);

	        avo.setTitle(multi.getParameter("title"));

	        // jongmok_id 처리
	        String jongmokIdStr = multi.getParameter("jongmok_id");
	        if(jongmokIdStr == null || jongmokIdStr.trim().isEmpty()) {
	            throw new Exception("jongmok_id is missing or null!");
	        }
	        avo.setJongmok_id(Integer.parseInt(jongmokIdStr));

	        mapper.contentAddOk(avo);

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return "redirect:/admin/content/contentadd";
	}
	
	
	

	@Override
	public List<ReserveInfoVo> contentCancel() {
		return mapper.contentCancel();
	}
	
	
	@Override
	public boolean cancelMember(int reserve_id) {
	    int result = mapper.cancelMemberId(reserve_id);
	    return result > 0;
	}

	
	@Override
	public List<AdminVo> memberView() {
		return mapper.memberView();
	}
	
    @Override
    public boolean banMember(String userid) {
        int result = mapper.banMemberById(userid);
        return result > 0;  // 삭제된 레코드가 1개 이상이면 true, 그렇지 않으면 false 반환
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
	public String action_list(Model model,HttpSession session) {
		if(session.getAttribute("userid")==null)
		{
			return "redirect:/member/login";
		}
		else
		{
			String userid = session.getAttribute("userid").toString();
			model.addAttribute("list",mapper.action_list());
			return "/admin/action/action_list";
		}
		
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
		
		return "redirect:/admin/gongji/gongji_list";
	}

	@Override
	public String inquiry_list(Model model) {
		ArrayList<MtmVo> inRlist=mapper.inRlist();
		model.addAttribute("inRlist",inRlist);
		ArrayList<MtmVo> inSlist=mapper.inSlist();
		model.addAttribute("inSlist",inSlist);
		ArrayList<MtmVo> inJlist=mapper.inJlist();
		model.addAttribute("inJlist",inJlist);
		ArrayList<MtmVo> inGlist=mapper.inGlist();
		model.addAttribute("inGlist",inGlist);
		return "/admin/inquiry/list";
	}

	@Override
	public String answer(HttpServletRequest request,Model model) {
		String no=request.getParameter("no");
		MtmVo mvo=mapper.answer(no);
		model.addAttribute("mvo",mvo);
		
		return "/admin/inquiry/answer";
	}

	@Override
	public String questOk(HttpServletRequest request,QuestVo qvo) {
		String no=request.getParameter("no");
		
		mapper.questOk(qvo);
		
		mapper.seqUp(no);
		return "redirect:/admin/inquiry/list";
	}
	
	@Override
	public String adfree_list(Model model) {
		model.addAttribute("flist",mapper.flist());
		return "/admin/free/adfree_list";
	}

	@Override
	public String adfree_content(Model model, FreeVo fvo, HttpServletRequest request) {
		String no=request.getParameter("no");
		model.addAttribute("chk",request.getParameter("chk"));
		model.addAttribute("fvo",mapper.content(fvo));
		return "/admin/free/adfree_content";
	}
	
	@Override
	public String readnum(FreeVo fvo, HttpServletRequest request) {
		String no=request.getParameter("no");
		mapper.readnum(fvo);
		return "redirect:/admin/free/adfree_content?no="+no;
	}
	
	@Override
	public String delete(FreeVo fvo ,HttpServletRequest reqeust) {
		int no=Integer.parseInt(reqeust.getParameter("no"));
		mapper.delete(fvo, reqeust, no);
		
		return "redirect:/admin/free/adfree_list?no="+fvo.getNo();
		
	}
	
	@Override
	public String adgongji_list(Model model, HttpSession session) {
		if(session.getAttribute("userid")==null)
		{
			return "redirect:/member/login";
		}
		else
		{
			ArrayList<HashMap> glist=mapper.glist();
			String userid=session.getAttribute("userid").toString();
			model.addAttribute("glist",glist);
			return "/admin/gongji/adgongji_list";
		}
	}

	@Override
	public String adgongjiadd() {
		
		return "/admin/gongji/adgongjiadd";
	}

	@Override
	public String adgongjiadd_ok(GongjiVo gvo) {
		mapper.gongjiAddOk(gvo);
		return "redirect:/admin/gongji/adgongji_list";
	}

	@Override
	public String adgongji_content(Model model, GongjiVo gvo) {
		model.addAttribute("gvo",mapper.adgongji_content(gvo));
		return "/admin/gongji/adgongji_content";
	}

	@Override
	public String greadnum(GongjiVo gvo, HttpServletRequest request) {
		String no=request.getParameter("no");
		mapper.greadnum(gvo);
		return "redirect:/admin/gongji/adgongji_content?no="+no;
	}

	@Override
	public String gdelete(GongjiVo gvo) {
		mapper.gdelete(gvo);
		return "redirect:/admin/gongji/adgongji_list";
	}

	@Override
	public String adgongji_update(GongjiVo gvo, Model model) {
		model.addAttribute("gvo",mapper.adgongji_update(gvo));
		return "/admin/gongji/adgongji_update";
	}

	@Override
	public String adgongji_update_ok(HttpServletRequest request, GongjiVo gvo) {
		String no=request.getParameter("no");
		mapper.adgongji_update_ok(gvo);
		return "redirect:/admin/gongji/adgongji_content?no="+no;
	}

	
}

