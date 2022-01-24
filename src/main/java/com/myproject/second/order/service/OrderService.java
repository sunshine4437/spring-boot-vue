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

	public List<OrderVO> getOrderList(String id) {
		return orderMapper.getOrderList(id);
	}

	public List<OrderVO> getCancelList(String id) {
		return orderMapper.getCancelList(id);
	}

	public void insertOrder(OrderVO orderVO) {
		orderMapper.insertOrder(orderVO);
	}

	public void updateOrder(long orderidx, String state) {
		orderMapper.updateOrder(orderidx, state);
	}
}
