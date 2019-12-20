package com.yijiayifeng.controller;
import com.yijiayifeng.entity.DateTime;
import com.yijiayifeng.entity.Kind;
import com.yijiayifeng.entity.Room;
import com.yijiayifeng.service.DateTimeServer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@RestController
@RequestMapping("/datetime")
public class DateTimeController {
    @Autowired
    DateTimeServer dateTimeServer;
    //查找所有房态
    @RequestMapping("/selectbyid")
    public List<Room> selectById(HttpServletRequest request){
        List<Room> rooms = dateTimeServer.selectById(request);
        return rooms;
    }


    //开关房获取参数

    @RequestMapping("/selectdatetime")
    public List<DateTime> selectDateTime(String [] date,String name,Double price,String kind,Integer admin_id) throws ParseException {
        List<DateTime> list=new ArrayList<>();
        for (String s : date) {
            System.out.println(s);
            DateFormat dateFormat=new SimpleDateFormat("yyyy/MM/dd");
            Date date1 = dateFormat.parse(s);
            DateTime dateTime = dateTimeServer.selectByDate(date1, name, price, kind, admin_id);
            list.add(dateTime);
        }
        System.out.println(list);
        return list;
    }
    //修改房态
    @RequestMapping("/updateByDateTime")
    public String updateByDateTime(String date,String name,String kind) throws ParseException {
        DateFormat dateFormat=new SimpleDateFormat("yyyy/MM/dd");
        Date date1 = dateFormat.parse(date);
        String s = dateTimeServer.updateByDateTime(date1, name, kind);
        return s;
    }
    //根据房型查Kind
    @RequestMapping("/selectByKind")
    public List<Kind> selectByKind(String name){
        List<Kind> kinds = dateTimeServer.selectByKind(name);
        return kinds;
    }

}
