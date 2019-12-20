package com.yijiayifeng.service;

import com.yijiayifeng.entity.Commodity;
import com.yijiayifeng.mapper.CommodityMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CommodityServiceImpl implements CommodityService {
    @Autowired
    CommodityMapper commodityMapper;

    //查询所有商品
    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<Commodity> selectAllCommodity(Commodity commodity) {
        List<Commodity> commodities = commodityMapper.selectAllCommodity(commodity);
        return commodities;
    }

    //查询分类商品
    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<Commodity> selectCommodity(Commodity commodity) {
        List<Commodity> commodities = commodityMapper.selectCommodity(commodity);
        return commodities;
    }

    //删除
    @Override
    public void deleteCommodity(Integer id) {
        commodityMapper.deleteCommodity(id);
    }

    //添加
    @Override
    public void addCommodity(Commodity commodity) {
        commodityMapper.addCommodity(commodity);
    }

    //修改
    @Override
    public void updateCommodity(Commodity commodity) {
        commodityMapper.updateCommodity(commodity);
    }
}
