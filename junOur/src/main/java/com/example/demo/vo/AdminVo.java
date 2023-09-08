package com.example.demo.vo;

import lombok.Data;

@Data
public class AdminVo {
	private int no,readnum,inwon,rstime, jongmok_id;
	private String img,sogae,jinhang,rule,jongmok,title,writeday,rsdate;
	private String userid,name,pwd,phone,email,gender,birth;
	public String getAddress() ;
		
	
}
