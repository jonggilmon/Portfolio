package com.example.demo.service;

import java.util.HashMap;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.maven.model.Model;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.example.demo.mapper.MemberMapper;
import com.example.demo.vo.MemberVo;

import net.nurigo.java_sdk.api.Message;


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

	@Override
	public String numSend(HttpServletRequest request)
	{
		
		String pnum=request.getParameter("pnum"); //폰 번호
		Random ran=new Random(); // 랜덤 인증번호 생성
		String num="";
		for(int i=0;i<6;i++)  // 6자리 인증번호
		{
			String imsi=Integer.toString(ran.nextInt(10)); // 0부터 9까지의 랜덤변수
			num=num+imsi;
		}
		
		String api_key="NCSKEQIFI4D0KO7Z";
		String api_secret="40FQYG9WIY8KHQ5YLYUGOCOSIEDDOTLA";
		Message coolsms=new Message(api_key, api_secret); // api=외부 소프트웨어 이용 개념?
		
		HashMap<String, String> params =new HashMap<String, String>(); // 장바구니
		
		params.put("to",pnum ); // 수신 전화번호
		params.put("from","010-7720-7661" ); // 송신 전화번호
		params.put("type","SMS" ); // 보내는 형식? 문자로 보내기
		params.put("text","Motion Mate:인증번호는"+num+"입니다."); // 메시지 내용
		params.put("app_version","test app 1.2" ); // 쓰는 application name and version
		
		try 
		{
			//coolsms.send(params); // Message 라이브러리를 통해 문자 메시지 전송
			
			return num; // 보낸 인증번호 확인용
		}
		catch(Exception e)
		{
			return "0";
		}
		
		
	}

	@Override
	public String samePnum(HttpServletRequest request) {
		String pnum=request.getParameter("pnum");
		System.out.println(mapper.samePnum(pnum));
		try
		{
			if(mapper.samePnum(pnum)==null)
			{
				return "1";
			}
			else
			{
				return "0";
			}
		}
		catch(Exception e)
		{
			return "2";
		}
	}

	@Override
	public String idfind() {
		
		
		return "/member/idfind";
	}

	@Override
	public String chkPnum(HttpServletRequest request) {
		String pnum=request.getParameter("pnum");
		
		if(mapper.chkPnum(pnum) == null)
		{
			return "0";
		}
		else
		{
			return "1";
		}
		
	}

	@Override
	public String getUserid(HttpServletRequest request) {
		String dbpnum=request.getParameter("dbpnum");
		String userid=mapper.getUserid(dbpnum);
		
		
	    return userid;
	}
	

	    
}







