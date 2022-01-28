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

	public List<OrderVO> getOrderList(String id, String startdate, String enddate, String productname) {
		String temp = "%" + productname + "%";
		return orderMapper.getOrderList(id, startdate, enddate, temp);
	}

	public List<OrderVO> getCancelList(String id, String startdate, String enddate, String productname) {
		String temp = "%" + productname + "%";
		return orderMapper.getCancelList(id, startdate, enddate, temp);
	}

	public void insertOrder(OrderVO orderVO) {
		String seller = orderMapper.getSeller(orderVO.getProductno());
		orderMapper.insertOrder(orderVO, seller);
	}

	public void updateOrder(long orderidx, String state) {
		orderMapper.updateOrder(orderidx, state);
	}

	public int haveOrder(String id) {
		return orderMapper.haveOrder(id);
	}
}
