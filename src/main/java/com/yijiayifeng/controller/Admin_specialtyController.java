package com.yijiayifeng.controller;

import com.yijiayifeng.entity.Admin_specialty;
import com.yijiayifeng.service.Admin_specialtyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

//管理员
@Controller
@RequestMapping("/admin_specialtyController")
public class Admin_specialtyController {

    @Autowired
    Admin_specialtyService admin_specialtyService;

    //登录
    @RequestMapping("/selectByPwd")
    public String selectByPwd(Admin_specialty admin, HttpSession session) {
        Admin_specialty admin1 = admin_specialtyService.selectByPwdd(admin);
        if(admin1==null){
            return "login_TTC";
        }else {
            session.setAttribute("admin",admin1);
            return "Index";
        }
    }
}

