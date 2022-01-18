package com.myproject.second.basket.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.myproject.second.basket.service.BasketService;
import com.myproject.second.basket.vo.BasketVO;

@RestController
@RequestMapping(value = "api/basket/*")
public class BasketController {
	@Autowired
	private BasketService basketService;

	@GetMapping("/basket")
	public List<BasketVO> getBasket(@RequestParam String id) {
		return basketService.findAllBasket(id);
	}

	@PostMapping("/productDetail/{productno}")
	public void insertBasket(@PathVariable("productno") int productno, @RequestParam String id,
			@RequestParam String option1, @RequestParam String option2, @RequestParam int amount) {
		basketService.addBasket(id, productno, option1, option2, amount);
	}

}
