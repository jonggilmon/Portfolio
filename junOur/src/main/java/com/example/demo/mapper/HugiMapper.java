package com.example.demo.mapper;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import com.example.demo.vo.HugiVo;

public interface HugiMapper {
	public ArrayList<HashMap> hlist();
	public void hugiadd_ok(HugiVo hvo, HttpServletRequest request);
	public HugiVo content(HugiVo hvo);
	public void readnum(HugiVo hvo);
	
	
}




