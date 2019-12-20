package com.yijiayifeng.entity;


import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class Specialty_order {
    private Integer id;    //主键
    private Integer admin_specialty_id;   //特产的admin id
    private Integer user_id;// 用户id
    private String name;//名称
    private Double price;  //单价
    private Double count; //数量
    private String state; //状态
    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date date; //时间
    private String kind; //商品分类
}
