package com.example.demo.controller;

import com.example.demo.mapper.ContentMapper;
import com.example.demo.mapper.MemberMapper;
import com.example.demo.mapper.ReserveInfoMapper;
import com.example.demo.service.ContentService;
import com.example.demo.vo.ContentVo;
import com.example.demo.vo.MemberVo;
import com.example.demo.vo.ReserveInfoVo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.sql.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
public class ContentController {

	 @Autowired
	    private ContentService service;
	 
	 @Autowired
	 private ContentMapper contentMapper;
	 
	 
	 @Autowired
	    private MemberMapper memberMapper;
	 
	 @Autowired
	    private ReserveInfoMapper reserveInfoMapper;
	 
	 @Autowired
	    private ContentMapper mapper;

	 @GetMapping("/main/content/content")
	 public String view(@RequestParam("no") int no, Model model, HttpSession session) {
		 
		   service.increaseReadNum(no);  // 조회수 1 증가
	     
	     ContentVo contentDetail = service.getContentByNo(no);
	     
	     contentDetail.setSogae(contentDetail.getSogae().replace("\r\n", "<br>"));
	     contentDetail.setJinhang(contentDetail.getJinhang().replace("\r\n", "<br>"));
	     contentDetail.setRule(contentDetail.getRule().replace("\r\n", "<br>"));
	     
	     
	     session.setAttribute("no", no);
	     System.out.println(contentDetail);
	     model.addAttribute("contentDetail", contentDetail);
	     
	     
	     String userid="";
			if(session.getAttribute("userid")!=null)
			   userid=session.getAttribute("userid").toString();
			
			if(mapper.isjjim(no,userid)) // 사용자가 이상품을 찜 했다
			{
				model.addAttribute("img","full.png");
			}
			else   // 찜을 안했다
			{
				model.addAttribute("img","empty.png");
			}

	     return "/main/content/content"; 
	 }
	    
	 
	 @GetMapping("/main/rlist")
	 public String rlist(@RequestParam(value = "jongmok_id", required = false) Integer jongmokId, Model model) {
	     List<ContentVo> reserves;
	     
	     if (jongmokId != null) {
	        
	         reserves = service.getReservesByJongmokId(jongmokId);
	     } else {
	      
	         reserves = service.getAllReserve();
	     }
	     for (ContentVo reserve : reserves) {
	    	
	         int reserveNo = reserve.getNo(); 
	         int currentReserveCount = reserveInfoMapper.inwonCount(reserveNo);
	         int maxInwon = contentMapper.getMaxinwonNo(reserveNo);

	         reserve.setCurrentCount(currentReserveCount);
	         reserve.setMaxCount(maxInwon);
	     }
	    
	     
	     model.addAttribute("AllReserves", reserves);
	     	   
	    
	     return "/main/rlist"; 
	 }
	 
	 @GetMapping("/getReservationsByDate")
	 public ResponseEntity<List<ContentVo>> getReservesByDate(@RequestParam String rsdate,  @RequestParam String jongmok_id) {
		 List<ContentVo> reservesByDate = contentMapper.findReservesByRsDateAndJongmokId(rsdate, jongmok_id);
	     
	     for (ContentVo reserve : reservesByDate) {
	         int reserveNo = reserve.getNo(); 
	         int currentReserveCount = reserveInfoMapper.inwonCount(reserveNo);
	         int maxInwon = contentMapper.getMaxinwonNo(reserveNo);

	         reserve.setCurrentCount(currentReserveCount);
	         reserve.setMaxCount(maxInwon);
	     }
	     return new ResponseEntity<>(reservesByDate, HttpStatus.OK);
	 }
	 
	 
	 
	 @RequestMapping("/main/content/resung")
	 public String resung(Model model, HttpSession session) {
	     List<ContentVo> reserveInfos = service.resung();
	     model.addAttribute("reserveInfos", reserveInfos);
	     ReserveInfoVo recentReserveInfo = (ReserveInfoVo) session.getAttribute("recentReserveInfo");
	    
	     if (recentReserveInfo != null) {
	         model.addAttribute("recentReserveInfo", recentReserveInfo);
	     }

	     return "main/content/resung";
	 }
	 


	 
	 @GetMapping("main/content/pwdAgree")
	 public String passwordCheckPage() {
		 
	     return "main/content/pwdAgree";  
	 }
	 @PostMapping("/content/pwdAgree")
	 public String checkPassword(@RequestParam String password, @RequestParam String userCaptcha, HttpSession session, Model model) {
	     String userid = (String) session.getAttribute("userid");
	     String sessionCaptcha = (String) session.getAttribute("captcha");  // 세션에서 captcha 가져오기

	     // 보안 문자 일치 확인
	     if(!userCaptcha.equals(sessionCaptcha)) {
	         model.addAttribute("errorMessage", "보안 문자가 일치하지 않습니다.");
	         return "main/content/pwdAgree";
	     }
	     
	     MemberVo member = memberMapper.getMemberByUserId(userid);
	     int reserveNo = (int) session.getAttribute("no");
	   
	     // 이미 예약된 아이디인지 확인
	     ReserveInfoVo existingReserveInfo = reserveInfoMapper.getReserveInfoByUserId(userid, reserveNo);
	     if (existingReserveInfo != null) {
	         model.addAttribute("errorMessage", "이미 예약되어 있는 아이디입니다.");
	         return "main/content/pwdAgree";
	     }
	      
	     int currentReserveCount = reserveInfoMapper.inwonCount(reserveNo); 
	     int maxinwon = contentMapper.getMaxinwonNo(reserveNo);
	      
	     if(currentReserveCount >= maxinwon) {
	         model.addAttribute("errorMessage", "이 컨텐츠의 예약이 가득 찼습니다.");
	         return "main/content/pwdAgree";
	     }

	     if (member != null && service.scanPassword(member, password)) {
	         ReserveInfoVo reserveInfo = new ReserveInfoVo();
	         reserveInfo.setUser_id(member.getUserid());
	         reserveInfo.setUser_name(member.getName());
	         reserveInfo.setReserve_no(reserveNo); 
	         reserveInfo.setReserve_date(new Date(System.currentTimeMillis()));
	          
	         ContentVo content = service.getContentByNo(reserveNo);
	         if (content != null) {
	             reserveInfo.setRs_date(content.getRsdate());
	             reserveInfo.setTitle_info(content.getTitle());
	             reserveInfo.setAdd_ress(content.getAddress());
	             reserveInfo.setRs_time(content.getRstime());
	         }

	         // 8자리 랜덤 값 생성
	         Random random = new Random();
	         int reserveId;
	         do {
	             reserveId = 10000000 + random.nextInt(90000000);
	             reserveInfo.setReserve_id(reserveId);
	         } while (reserveInfoMapper.getReserveById(reserveId) != null);

	         int result = reserveInfoMapper.insertReserveInfo(reserveInfo);
	         if (result <= 0) {
	             model.addAttribute("insertError", "예약 정보 삽입에 실패하였습니다.");
	             return "main/content/pwdAgree";
	         }

	         session.setAttribute("recentReserveInfo", reserveInfo);
	         return "redirect:/main/content/resung"; 
	     } else {
	         model.addAttribute("errorMessage", "비밀번호가 일치하지 않습니다.");
	         return "main/content/pwdAgree";
	     }
	 }

	 @RequestMapping("/main/content/addjjim")
		public @ResponseBody String addjjim(HttpServletRequest request
				,HttpSession session)
		{
			return service.addjjim(request,session);
		}
		
		@RequestMapping("/main/content/deljjim")
		public @ResponseBody String deljjim(HttpServletRequest request
				,HttpSession session)
		{
			return service.deljjim(request,session);
		}

	 
	 
	 
	 
}
