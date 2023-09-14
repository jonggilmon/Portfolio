package com.example.demo.mapper;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import com.example.demo.vo.HugiVo;

public interface HugiMapper {
	public ArrayList<HugiVo> hlist();
	public void hugiadd_ok(HugiVo hvo);
	public HugiVo content(HugiVo hvo);
	public void readnum(HugiVo hvo);
	public void delete(HugiVo hvo);
	public HugiVo hugi_update(HugiVo hvo);
	public void hugi_update_ok(HugiVo hvo);
	
}




