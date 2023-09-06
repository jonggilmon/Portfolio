package com.example.demo.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class ReserveInfoVo {
    private int reserve_id, reserve_no;
    private String user_id, user_name;
    private Date reserve_date;
}