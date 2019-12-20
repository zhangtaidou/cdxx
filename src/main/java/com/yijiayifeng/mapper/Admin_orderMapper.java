package com.yijiayifeng.mapper;

import com.yijiayifeng.entity.Admin;

import com.yijiayifeng.entity.Order_;
import com.yijiayifeng.entity.Total;

import java.util.List;

//酒店订单
public interface Admin_orderMapper {
    //查询所有订单
    public List<Order_>  selectAllOrder(Order_ order_);

    //根据日期结算订单
    public void updateByDatePrice_state(Order_ order_);

    //查询指定日期的订单
    public List<Order_> selectByDateOrder(Order_ order_);

    //查询对应酒店
    public Admin  selectByNameRoom(String name);
    //结算酒店订单
    public void updateByDateOrder(Order_ order_);

    //根据姓名查询某用户订单      所有订单
    public List<Order_> selectByUserName(Order_ order_);
    //根据手机号查询某用户订单    所有订单
    public List<Order_> selectByUserPhone(Order_ order_);

    //根据姓名查询某用户订单      新建订单
    public List<Order_> selectByUserNameState(Order_ order_);
    //根据手机号查询某用户订单    新建订单
    public List<Order_> selectByUserPhoneState(Order_ order_);

    //根据入住状态处理订单
    public void updateState(Order_ order_);
    public Order_ selectByIdorder(Order_ order_);


    //根据状态查询入住客户
    public List<Order_> selectByIdState(Order_ order_);
    //根据状态查询待入住客户
    public List<Order_> selectByIdStateNew(Order_ order_);
    //根据状态查询待确认订单
    public List<Order_> selectByStateNext(Order_ order_);
    //根据状态查询已取消订单
    public List<Order_> selectByStateNo(Order_ order_);
    //根据状态查询拒绝订单
    public List<Order_> selectByStateNoNext(Order_ order_);

}
