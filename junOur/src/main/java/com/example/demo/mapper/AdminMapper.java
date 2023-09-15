package com.example.demo.mapper;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.ActionVo;
import com.example.demo.vo.AdminVo;
import com.example.demo.vo.GongjiVo;
import com.example.demo.vo.MtmVo;
import com.example.demo.vo.QuestVo;

@Mapper
public interface AdminMapper {
	public void contentAddOk(AdminVo avo);
	
	public List<AdminVo> memberView();
	
	public void action_write_ok(ActionVo acvo);

	public ArrayList<ActionVo> action_list();

	public void action_readnum(ActionVo avo);

	public ActionVo action_content(ActionVo avo);

	public void action_delete(ActionVo avo);

	public ActionVo action_update(ActionVo avo);

	public void action_update_ok(ActionVo avo);
	
	public void gongjiAddOk(GongjiVo gvo);

	public int banMemberById(String userid);
	
	public ArrayList<MtmVo> list();
	
	public MtmVo answer(String no);
	
	public void questOk(QuestVo qvo);
	
	public void seqUp(QuestVo qvo);
	
}
