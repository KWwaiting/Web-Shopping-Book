package com.itheima.dao;
import com.itheima.po.Book;
import com.itheima.po.Order;

import java.util.List;

/**
 * 用户DAO层接口
 */
public interface OrderDao {

    public int addOrder(Order order);
    public List<Order> selectOrder(Order order);
    public int deleteOrder(Integer order_id);
    public int doAddOrder(Order order);
    public List<Order> selectOrderList(Order order);
    public Order findOrderById(Integer order_id);
    public int updateOrder(Order order);

    public int deleteId(Integer order_id);
}
