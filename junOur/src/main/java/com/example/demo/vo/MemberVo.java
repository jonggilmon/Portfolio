package com.example.demo.vo;

import lombok.Data;

@Data
public class MemberVo {
   private int no;
   private String userid,name,pwd,phone,email,writeday,gender,birth;
   
   // 로그인 시도 
   private int sido;


  
 
}
