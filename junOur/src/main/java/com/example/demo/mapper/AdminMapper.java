package com.example.demo.mapper;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.ActionVo;
import com.example.demo.vo.AdminVo;
import com.example.demo.vo.FreeVo;
import com.example.demo.vo.GongjiVo;
import com.example.demo.vo.MtmVo;
import com.example.demo.vo.QuestVo;
import com.example.demo.vo.ReserveInfoVo;

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
	
	public ArrayList<MtmVo> inRlist();
	public ArrayList<MtmVo> inSlist();
	public ArrayList<MtmVo> inJlist();
	public ArrayList<MtmVo> inGlist();
	
	public MtmVo answer(String no);
	
	public void questOk(QuestVo qvo);
	
	public void seqUp(String no);


	public List<ReserveInfoVo> contentCancel();



	public int cancelMemberId(int reserve_no); // 이거 예약신청한 유저 예약취소 시키는거
	
	public ArrayList<FreeVo> flist();
	public FreeVo content(FreeVo fvo);
	public void readnum(FreeVo fvo);
	public void delete(FreeVo fvo, HttpServletRequest reqeust, int no);
	public boolean isPwd(String pwd,int no);
	
}
