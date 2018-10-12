package com.itheima.service.impl;

import com.itheima.dao.BookDao;
import com.itheima.dao.OrderDao;
import com.itheima.po.Book;
import com.itheima.po.Order;
import com.itheima.service.BookService;
import com.itheima.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 用户Service接口实现类
 */
@Service("orderService")
@Transactional
public class OrderServiceImpl implements OrderService {
	// 注入UserDao
	@Autowired
	private OrderDao orderDao;

	@Override
	public  int addOrder(Order order) {
		return orderDao.addOrder(order);
	}

	@Override
	public List<Order> selectOrder(Order order) {
		List<Order> o = this.orderDao.selectOrder(order);
		return o;
	}

	@Override
	public int deleteOrder(Integer order_id) {
		return orderDao.deleteOrder(order_id);
	}

	@Override
	public  int doAddOrder(Order order) {
		return orderDao.doAddOrder(order);
	}

	@Override
	public List<Order> selectOrderList(Order order) {
		List<Order> u = this.orderDao.selectOrderList(order);
		return u;
	}

	@Override
	public Order findOrderById(Integer order_id) {
		Order order = orderDao.findOrderById(order_id);
		return order;
	}

	@Override
	public int updateOrder(Order order) {
		return orderDao.updateOrder(order);
	}

//	@Override
//	public List<Order> selectMyOrder(Order order) {
//		List<Order> o = this.orderDao.selectMyOrder(order);
//		return o;
//	}

	@Override
	public int deleteId(Integer order_id) {
		return orderDao.deleteId(order_id);
	}
}
