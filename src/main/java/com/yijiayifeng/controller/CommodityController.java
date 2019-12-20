package com.yijiayifeng.controller;

import com.yijiayifeng.entity.Commodity;
import com.yijiayifeng.service.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/CommodityMapper")
public class CommodityController {

    @Autowired
    CommodityService commodityService;

    //查询所有
    @RequestMapping("/selectAllCommdity")
    public String selectAllCommodity(Commodity commodity) {
        List<Commodity> commodities = commodityService.selectAllCommodity(commodity);
        return "";
    }

    //查询分类商品
    @RequestMapping("/selectCommdity")
    public String selectCommodity(Commodity commodity) {
        List<Commodity> commodities = commodityService.selectCommodity(commodity);
        return "";
    }

    //删除
    @RequestMapping("/deleteCommdity")
    public String deleteCommdity(Integer id) {
        commodityService.deleteCommodity(id);
        return "";
    }

    //添加
    @RequestMapping("/insertCommdity")
    public String insertCommdity(Commodity commodity) {
        commodityService.addCommodity(commodity);
        return "";
    }

    //修改
    @RequestMapping("/updateCommodity")
    public String updateCommodity(Commodity commodity) {
        commodityService.updateCommodity(commodity);
        return "";
    }
}
