package com.myproject.second.basket.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myproject.second.basket.mapper.BasketMapper;
import com.myproject.second.basket.vo.BasketVO;

@Service
public class BasketService {
	@Autowired
	private BasketMapper basketMapper;

	public List<BasketVO> findAllBasket(String id) {
		return basketMapper.findAllBasket(id);
	}

	public void addBasket(String id, int productno, String option1, String option2, int amount) {
		basketMapper.addBasket(id, productno, option1, option2, amount);
	}
}
