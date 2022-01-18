package com.myproject.second.basket.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.myproject.second.basket.mapper.BasketMapper;
import com.myproject.second.basket.vo.BasketVO;

@Service
public class BasketService {
	private BasketMapper basketMapper;
	
	public BasketService(BasketMapper basketMapper) {
		this.basketMapper = basketMapper;
	}

	public void addBasket(String id, int productno, String option1, String option2, int amount) {
		basketMapper.addBasket(id, productno, option1, option2, amount);
	}

	public List<BasketVO> findAllBasket(String id) {
		return basketMapper.findAllBasket(id);
	}

	public void deleteBasket(List<Long> basketidx) {
		for (long l : basketidx) {
			basketMapper.deleteBasket(l);
		}
	}
}
