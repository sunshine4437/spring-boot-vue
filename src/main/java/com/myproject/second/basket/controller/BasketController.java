package com.myproject.second.basket.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.HttpClientErrorException.BadRequest;

import com.myproject.second.basket.service.BasketService;
import com.myproject.second.basket.vo.BasketVO;

@RestController
@RequestMapping(value = "api/basket/*")
public class BasketController {
	@Autowired
	private BasketService basketService;

	@PostMapping("/create")
	public void insertBasket(@RequestParam String id, @RequestParam int productno, @RequestParam String option1,
			@RequestParam String option2, @RequestParam int amount) {
		basketService.addBasket(id, productno, option1, option2, amount);
	}

	@GetMapping("/read")
	public List<BasketVO> getBasket(@RequestParam String id) {
		return basketService.findAllBasket(id);
	}

	@DeleteMapping("/delete")
	public ResponseEntity<?> deleteBasket(@RequestParam long basketidx) {
		try {
			basketService.deleteBasket(basketidx);
			return new ResponseEntity<>(HttpStatus.OK);
		} catch (Exception e) {
			return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
}
