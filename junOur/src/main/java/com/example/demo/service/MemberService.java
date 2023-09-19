package com.example.demo.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.maven.model.Model;

import com.example.demo.vo.MemberVo;

public interface MemberService {
     public String member();
     public int useridCheck(MemberVo mvo);
     public String memberOk(MemberVo mvo);
     public String login();
     public String loginOk(MemberVo mvo, HttpSession session);
     public String logout(HttpSession session);
     public String numSend(HttpServletRequest request);
     public String samePnum(HttpServletRequest request);
     public String idfind();
     public String chkPnum(HttpServletRequest request);
     public String getUserid(HttpServletRequest request);
     public String pwdfind();
     public String chkUserid(HttpServletRequest request);
     public String PnUchk(HttpServletRequest request);

}
