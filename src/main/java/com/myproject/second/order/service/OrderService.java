package com.myproject.second.order.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.myproject.second.order.mapper.OrderMapper;
import com.myproject.second.order.vo.OrderVO;

@Service
public class OrderService {
	private OrderMapper orderMapper;

	public OrderService(OrderMapper orderMapper) {
		this.orderMapper = orderMapper;
	}

	public List<OrderVO> getAllOrderList(String id) {
		return orderMapper.getAllOrderList(id);
	}

	public void insertOrder(String id, int productno, String selectedoption, int totalprice, String ordermethod,
			String danme, String dtel, String dzipcode, String daddress, String ddetailaddr) {
		orderMapper.insertOrder(id, productno, selectedoption, totalprice, ordermethod, danme, dtel, dzipcode, daddress,
				ddetailaddr);
	}
	
	public void updateOrder(long orderidx, String state) {
		orderMapper.updateOrder(orderidx, state);
	}
}
