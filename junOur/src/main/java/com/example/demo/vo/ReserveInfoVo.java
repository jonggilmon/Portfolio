package com.example.demo.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class ReserveInfoVo {
    private int reserve_id, reserve_no;
    private String user_id, user_name, title_info, add_ress,rs_time;
    private Date reserve_date, rs_date;
}