package com.example.demo.mapper;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.GongjiVo;

@Mapper
public interface GongjiMapper {
	public ArrayList<HashMap> glist();
	public void readnum(GongjiVo gvo);
	public GongjiVo content(GongjiVo gvo);
	public void delete(GongjiVo gvo);
	public GongjiVo gongji_update(GongjiVo gvo);
	public void gongji_update_ok(GongjiVo gvo);
}
