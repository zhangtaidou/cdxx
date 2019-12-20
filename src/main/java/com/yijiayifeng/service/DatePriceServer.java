package com.yijiayifeng.service;

import com.yijiayifeng.entity.DateTime;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface DatePriceServer {
    //通过日期和房型查找价格
    public List<DateTime> selectByPrice(DateTime dateTime);

    //修改
    public void updatePrice(DateTime dateTime);

    //批量修改
    public void updateByPrice(DateTime dateTime);

}
