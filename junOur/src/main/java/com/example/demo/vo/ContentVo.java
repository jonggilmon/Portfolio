package com.example.demo.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class ContentVo {
	private int no,readnum,inwon, maxCount, currentCount,jongmok_id;
	private String img,sogae,jinhang,rule,address,title,writeday, rstime;
	private Date rsdate;
}
