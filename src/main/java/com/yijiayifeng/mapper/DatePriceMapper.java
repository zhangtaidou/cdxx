package com.yijiayifeng.mapper;

import com.yijiayifeng.entity.DateTime;

import java.util.List;

public interface DatePriceMapper {
    //通过日期和房型查找
    public List<DateTime> selectByPrice(DateTime dateTime);

    //通过日期和房型查找
    public void updatePrice(DateTime dateTime);

}
