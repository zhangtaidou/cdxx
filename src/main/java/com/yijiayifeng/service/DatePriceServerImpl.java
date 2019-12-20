package com.yijiayifeng.service;

import com.yijiayifeng.entity.DateTime;
import com.yijiayifeng.mapper.DatePriceMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class DatePriceServerImpl implements DatePriceServer {
    @Autowired
    DatePriceMapper datePriceMapper;

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<DateTime> selectByPrice(DateTime dateTime) {
        List<DateTime> dateTimes = datePriceMapper.selectByPrice(dateTime);
        return dateTimes;
    }

    @Override
    public void updatePrice(DateTime dateTime) {
        datePriceMapper.updatePrice(dateTime);
    }

    @Override
    public void updateByPrice(DateTime dateTime) {
        datePriceMapper.updatePrice(dateTime);
    }
}
