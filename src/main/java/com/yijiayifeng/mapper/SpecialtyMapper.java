package com.yijiayifeng.mapper;

import com.yijiayifeng.entity.Specialty;
import com.yijiayifeng.entity.Specialty_order;

import java.util.List;

public interface SpecialtyMapper {
    //查询所有
    public List<Specialty> selectAllSpecialty(Specialty specialty);

    //查询所有用户
    public List<Specialty> selectSpecialtyAll();
    //查询分类商品
    public List<Specialty> selectSpecialty(Specialty specialty);
    //删除
    public void deleteSpecialty(Integer id);
    //添加
    public void addSpecialty(Specialty specialty);
    //修改
    public void updateSpecialty(Specialty specialty);

    //计算土特产订单价格总和
    public List<Specialty_order> selectSpecialty_order();
}
