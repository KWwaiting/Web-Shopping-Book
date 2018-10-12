package com.itheima.controller;

import com.itheima.po.Book;
import com.itheima.po.Order;
import com.itheima.service.BookService;
import com.itheima.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 用户控制器类
 */
@Controller
public class OrderController {

    @Autowired
    private OrderService orderService;

    @RequestMapping(value = "/addOrder")
    public String addOrder(Order order) {
        int o = orderService.addOrder(order);
        return "shopping homepage.jsp";
    }

    @RequestMapping(value = "/selectOrder")
    public String selectOrder(Order order,Model model) {
        List<Order> o = orderService.selectOrder(order);
        model.addAttribute("os",o);
        return "orderList.jsp";
    }

    @RequestMapping( "/deleteOrder")
    @ResponseBody
    public String deleteOrder(Integer order_id) {
        int o = orderService.deleteOrder(order_id);
        return "orderList.jsp";
    }

    @RequestMapping(value = "/doAddOrder")
    public String doAddUser(Order order) {
        int o = orderService.doAddOrder(order);
        return "orderList.jsp";
    }

    @RequestMapping(value = "/selectOrderList")
    public String selectOrderList( Order order,Model model) {
        List<Order> o = orderService.selectOrderList(order);
        model.addAttribute("os",o);
        return "orderList.jsp";
    }

    @RequestMapping( "/findOrderById")
    @ResponseBody
    public Order findOrderById(Integer order_id) {
        Order order= orderService.findOrderById(order_id);
        return order;
    }

    @RequestMapping( "/updateOrder")
    public String updateOrder(Order order) {
        int o = orderService.updateOrder(order);
        return "orderList.jsp";
    }

    @RequestMapping( "/deleteId")
    @ResponseBody
    public String deleteId(Integer order_id) {
        int b = orderService.deleteId(order_id);
        return "myOrder.jsp";
    }



}