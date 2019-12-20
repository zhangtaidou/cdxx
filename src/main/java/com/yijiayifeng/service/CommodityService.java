package com.yijiayifeng.service;

import com.yijiayifeng.entity.Commodity;

import java.util.List;

public interface CommodityService {
    //查询商品
    public List<Commodity> selectAllCommodity(Commodity commodity);

    //查询分类商品
    public List<Commodity> selectCommodity(Commodity commodity);

    //删除商品
    public void deleteCommodity(Integer id);

    //添加商品
    public void addCommodity(Commodity commodity);

    //修改商品
    public void updateCommodity(Commodity commodity);
}
