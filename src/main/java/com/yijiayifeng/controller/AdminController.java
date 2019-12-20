package com.yijiayifeng.controller;

import com.yijiayifeng.entity.Admin;
import com.yijiayifeng.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

//管理员
@Controller
@RequestMapping("/adminController")
public class AdminController {

    @Autowired
    AdminService adminService;

    //傻逼张大豆
    //登录
    @RequestMapping("/selectByPwd")
    public String selectByPwd1(Admin admin, HttpSession session) {
        Admin admin1 = adminService.selectByPwd(admin);
        if (admin1 == null) {
            return "login.jsp";
        } else {
            session.setAttribute("admin", admin1);
            return "Index.jsp";
        }
    }

    //登录
    @RequestMapping("/selectByPwd1")
    public String selectByPwd(String account, String password, HttpSession session) {
        Admin admin = new Admin();
        admin.setAccount(account);
        admin.setPassword(password);
        Admin admin1 = adminService.selectByPwd(admin);
        System.out.println(admin1);
        if(admin1==null){
            System.out.println("1");
            return "redirect:/login.jsp";
        }else {
            System.out.println("11");
            session.setAttribute("admin",admin1);
            return "redirect:/Index.jsp";
        }
    }

    //修改订单结算状态
    @RequestMapping("/updateByIdPrice_state")
    public String updateByIdPrice_state(Admin admin) {
        adminService.updateByIdPrice_state(admin);
        return "";
    }
}

