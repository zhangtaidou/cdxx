package com.yijiayifeng.entity;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

@Data
@AllArgsConstructor       //有参
@NoArgsConstructor        //无参
@Accessors(chain = true)  //级联查询
public class Admin_specialty {
    private Integer id;
    private String name;
    private String user_name;
    private String password;
    private Integer spe_id;
}





