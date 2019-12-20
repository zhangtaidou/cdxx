package com.yijiayifeng.mapper;

import com.yijiayifeng.entity.Commodity;

import java.util.List;

public interface CommodityMapper {
    //查询所有
    public List<Commodity> selectAllCommodity(Commodity commodity);
    //查询分类商品
    public List<Commodity> selectCommodity(Commodity commodity);
    //删除
    public void  deleteCommodity(Integer id);
    //添加
    public void  addCommodity(Commodity commodity);
    //修改
    public void  updateCommodity(Commodity commodity);
}
