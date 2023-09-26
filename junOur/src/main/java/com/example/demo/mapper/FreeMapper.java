package com.example.demo.mapper;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;

import com.example.demo.vo.FreeVo;

public interface FreeMapper {
	public ArrayList<FreeVo> flist(@Param("start") int start);
	public void freeadd_ok(FreeVo fvo);
	public FreeVo content(FreeVo fvo);
	public void readnum(FreeVo fvo);
	public void delete(FreeVo fvo, HttpServletRequest reqeust, int no);
	public FreeVo free_update(FreeVo fvo);
	public void free_update_ok(FreeVo fvo);
	public boolean isPwd(String pwd,int no);
	public void setRownum(int r);
	public int getChong();
	
}




