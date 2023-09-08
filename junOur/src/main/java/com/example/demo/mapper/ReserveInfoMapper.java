package com.example.demo.mapper;

import com.example.demo.vo.ReserveInfoVo;

public interface ReserveInfoMapper {
    int insertReserveInfo(ReserveInfoVo reserveInfo);
    ReserveInfoVo getReserveById(int reserve_id);
	int inwonCount(int reserveNo);
	ReserveInfoVo getReserveInfoByUserId(String userid, int reserveNo);
}