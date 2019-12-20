package com.yijiayifeng.controller;

import com.yijiayifeng.entity.Specialty;
import com.yijiayifeng.entity.Specialty_order;
import com.yijiayifeng.entity.Total;
import com.yijiayifeng.service.SpecialtyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/SpecialtyMapper")
public class SpecialtyController {

    @Autowired
    SpecialtyService specialtyService;
    //查询所有
    @RequestMapping("/selectAllSpecialty")
    public String selectAllSpecialty(Specialty specialty) {
        List<Specialty> specialties = specialtyService.selectAllSpecialty(specialty);
        return "";
    }

    //查询用户商品
    @RequestMapping("/selectSpecialtyAll")
    public String selectSpecialtyAll() {
        List<Specialty> specialties = specialtyService.selectSpecialtyAll();
        return "";
    }
    //查询分类商品
    @RequestMapping("/selectSpecialty")
    public String selectSpecialty(Specialty specialty) {
        List<Specialty> specialties = specialtyService.selectSpecialty(specialty);
        return "";
    }
    //删除
    @RequestMapping("/deleteSpecialty")
    public String deleteSpecialty(Integer id) {
        specialtyService.deleteSpecialty(id);
        return "";
    }
    //添加
    @RequestMapping("/insertSpecialty")
    public String insertCommdity(Specialty specialty) {
        specialtyService.addSpecialty(specialty);
        return "";
    }
    //修改
    @RequestMapping("/updateSpecialty")
    public String updateSpecialty(Specialty specialty) {
        specialtyService.updateSpecialty(specialty);
        return "";
    }

    //土特产商品价格总和
    @RequestMapping("/selectSpecialty_order")
    public Total selectSpecialty_order() {
        List<Specialty_order> orders = specialtyService.selectSpecialty_order();
        Total total = new Total();
        double allprice = 0;
        double countprice = 0;
        for (Specialty_order order : orders) {
            if (order.getState().equals("8")) {
                //单个订单成功的价格
                countprice = order.getCount() * order.getPrice();
                //将价格给allprice
                allprice = countprice + allprice;
            }
            ;
        }
        total.setTotal(allprice);
        return total;
    }
}
