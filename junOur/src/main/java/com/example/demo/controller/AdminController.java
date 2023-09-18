package com.example.demo.controller;

import java.net.http.HttpRequest;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.service.AdminService;
import com.example.demo.service.ContentService;
import com.example.demo.vo.ActionVo;
import com.example.demo.vo.AdminVo;
import com.example.demo.vo.GongjiVo;
import com.example.demo.vo.QuestVo;

@Controller
public class AdminController {

	@Autowired
	@Qualifier("admin")
	private AdminService service;
	
	@RequestMapping("/admin/content/contentadd")
	public String contentadd()
	{
		return service.contentadd();
	}
	
	@RequestMapping("/admin/content/contentAddOk")
	public String contentAddOk(@ModelAttribute AdminVo adminVo, HttpServletRequest request) { 
	    System.out.println("jongmok_id value: " + adminVo.getAddress());

	    // rsdate 값을 받아서 확인 및 사용 (Date 타입으로 변환하지만 AdminVo에는 설정하지 않음)
	    String rsdateStr = request.getParameter("rsdate");
	    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-mm-dd");

	    // rsdateStr 값이 null이 아닌 경우에만 파싱을 시도
	    if (rsdateStr != null && !rsdateStr.trim().isEmpty()) {
	        try {
	            java.util.Date rsdate = formatter.parse(rsdateStr);
	            // rsdate 값을 사용하는 로직 (예: 데이터베이스에 저장하기 전의 중간 처리 등)
	            // 예시: 
	            // adminService.someMethod(rsdate);
	        } catch (ParseException e) {
	            e.printStackTrace();
	        }
	    } else {
	        // rsdateStr 값이 null이거나 빈 문자열인 경우에 대한 처리 (예: 오류 메시지 출력)
	        System.err.println("rsdate value is empty or not provided!");
	    }
	    
	    

	    // "rstime" 값 변환: 예) "11:00" -> 1100
	    String rstime = request.getParameter("rstime");
	    if (rstime != null) {
	        adminVo.setRstime(rstime); // AdminVo에 rstime 값을 그대로 설정
	    } else {
	        // rstime 값이 null일 때 처리
	        System.err.println("rstime value is missing!");
	    }
	    
	    return service.contentAddOk(request);
	}
	
	
	@RequestMapping("/admin/member/memberView")
	public String memberview(Model model) {
		  System.out.println("memberview method is called!");
	    List<AdminVo> members = service.memberView();
	    model.addAttribute("members", members);
	    System.out.println("Number of members: " + members.size());
	    return "/admin/member/memberView"; 
	}
	
	@RequestMapping("/admin/member/banMember")
	public String banMember(@RequestParam String userid, RedirectAttributes redirectAttributes) {
	    System.out.println("Trying to ban user with ID: " + userid);  // 이 로그가 출력되는지 확인
	    
	    if (service.banMember(userid)) {
	        redirectAttributes.addFlashAttribute("message", "Successfully banned member with ID: " + userid);
	    } else {
	        redirectAttributes.addFlashAttribute("errorMessage", "Failed to ban member with ID: " + userid);
	    }
	    return "redirect:/admin/member/memberView";
	}
	@RequestMapping("/admin/action/action_write")
	public String action_write()
	{
		return service.action_write();
	}
	@RequestMapping("/admin/action/action_write_ok")
	public String action_write_ok(HttpServletRequest request)
	{
		return service.action_write_ok(request);
	}
	@RequestMapping("admin/action/action_list")
	public String action_list(Model model,HttpSession session)
	{
		return service.action_list(model,session);
	}
	@RequestMapping("/admin/action/action_readnum")
	public String action_readnum(HttpServletRequest request, ActionVo avo)
	{
		return service.action_readnum(request,avo);
	}
	@RequestMapping("/admin/action/action_content")
	public String action_content(Model model,ActionVo avo,HttpSession session)
	{
		return service.action_content(model,avo,session);
	}
	@RequestMapping("/admin/action/action_delete")
	public String action_delete(ActionVo avo)
	{
		return service.action_delete(avo);
	}
	@RequestMapping("/admin/action/action_update")
	public String action_update(ActionVo avo,Model model)
	{
		return service.action_update(avo,model);
	}
	@RequestMapping("/admin/action/action_update_ok")
	public String action_update_ok(HttpServletRequest request,ActionVo avo)
	{
		return service.action_update_ok(request,avo);
	}
	
	@RequestMapping("/admin/gongji/gongjiadd")
	public String gongji()
	{
		return "/admin/gongji/gongjiadd";
	}
	
	@RequestMapping("/admin/gongji/gongjiAddOk")
	public String gongjiAddOk(GongjiVo gvo)
	{
		return service.gongjiAddOk(gvo);
	}
	
	@RequestMapping("/admin/inquiry/list")
	public String admin_inquiry_list(Model model)
	{
		return service.list(model);
	}
	
	@RequestMapping("/admin/inquiry/answer")
	public String answer(HttpServletRequest request, Model model)
	{
		return service.answer(request,model);
	}
	
	@RequestMapping("/admin/inquiry/questOk")
	public String questOk(HttpServletRequest request, QuestVo qvo)
	{
		return service.questOk(request,qvo);
	}
}
