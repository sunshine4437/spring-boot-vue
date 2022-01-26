package com.myproject.second.order.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.myproject.second.order.service.OrderService;
import com.myproject.second.order.vo.OrderVO;

@RestController
@RequestMapping(value = "api/order/*")
public class OrderController {
	@Autowired
	private OrderService orderService;

	@GetMapping("/{id}")
	public List<OrderVO> getAllOrderList(@PathVariable("id") String id) throws Exception {
		return orderService.getAllOrderList(id);
	}

	@GetMapping("/order/{id}")
	public List<OrderVO> getOrderList(@PathVariable("id") String id) throws Exception {
		return orderService.getOrderList(id);
	}

	@GetMapping("/cancel/{id}")
	public List<OrderVO> getCancelList(@PathVariable("id") String id) throws Exception {
		return orderService.getCancelList(id);
	}

	@GetMapping("/canquit/{id}")
	public int haveOrder(@PathVariable("id") String id) throws Exception {
		return orderService.haveOrder(id);
	}

	@PostMapping("/create")
	public void insertOrder(@RequestBody OrderVO orderVO) throws Exception {
		orderService.insertOrder(orderVO);
	}

	@PutMapping("/update")
	public void updateOrder(@RequestParam("orderidx") long orderidx, @RequestParam("state") String state)
			throws Exception {
		orderService.updateOrder(orderidx, state);
	}
}
