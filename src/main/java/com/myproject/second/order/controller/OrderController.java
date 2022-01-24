package com.myproject.second.order.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
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

	@PostMapping("/create")
	public void insertOrder(@RequestParam("id") String id, @RequestParam("productno") int productno,
			@RequestParam("selectedoption") String selectedoption, @RequestParam("totalprice") int totalprice,
			@RequestParam("ordermethod") String ordermethod, @RequestParam("danme") String danme,
			@RequestParam("dtel") String dtel, @RequestParam("dzipcode") String dzipcode,
			@RequestParam("daddress") String daddress, @RequestParam("ddetailaddr") String ddetailaddr)
			throws Exception {
		orderService.insertOrder(id, productno, selectedoption, totalprice, ordermethod, danme, dtel, dzipcode,
				daddress, ddetailaddr);
	}

	@PutMapping("/update")
	public void updateOrder(@RequestParam("orderidx") long orderidx, @RequestParam("state") String state) throws Exception {
		orderService.updateOrder(orderidx, state);
	}
}
