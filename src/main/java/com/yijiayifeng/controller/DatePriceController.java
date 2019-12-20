package com.yijiayifeng.controller;

import com.yijiayifeng.entity.DateTime;
import com.yijiayifeng.service.DatePriceServer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@RestController
@RequestMapping("/dateprice")
public class DatePriceController {
    @Autowired
    DatePriceServer datePriceServer;
    //开关房获取参数

    @RequestMapping("/selectdatetime")
    public List<DateTime> selectDateTime(DateTime dateTime) {
        List<DateTime> dateTimes = datePriceServer.selectByPrice(dateTime);
        return dateTimes;
    }

    //修改房间价格
    @RequestMapping("/updateprice")
    public String updatePrice(DateTime dateTime) {
        datePriceServer.updatePrice(dateTime);
        return "";
    }

    //批量修改房间价格
    @RequestMapping("/updateByprice")
    public String updateByPrice(String[] date, Integer admin_id, String kind, String[] room_name, double price) throws ParseException {
        for (String s : date) {
            for (String name : room_name) {
                DateFormat format = new SimpleDateFormat("yyyy/MM/dd");
                Date date1 = format.parse(s);
                DateTime dateTime = new DateTime();
                dateTime.setDate(date1);
                dateTime.setRoom_name(name);
                dateTime.setKind(kind);
                dateTime.setAdmin_id(admin_id);
                dateTime.setPrice(price);
                datePriceServer.updateByPrice(dateTime);
            }

        }
        return "";
    }
}
