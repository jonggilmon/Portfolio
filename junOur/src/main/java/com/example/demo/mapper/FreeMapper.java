package com.example.demo.mapper;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;

import com.example.demo.vo.FreeVo;

public interface FreeMapper {
	public ArrayList<FreeVo> flist(int start);
	public void freeadd_ok(FreeVo fvo);
	public FreeVo content(FreeVo fvo);
	public void readnum(FreeVo fvo);
	public void delete(FreeVo fvo);
	public FreeVo free_update(FreeVo fvo);
	public void free_update_ok(FreeVo fvo);
	public String isPwd(int no); 
	public int getChong();
	
}




