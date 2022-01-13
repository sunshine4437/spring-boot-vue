package com.myproject.second.product.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.myproject.second.product.mapper.ProdMapper;
import com.myproject.second.product.vo.ProdVO;

@Service
public class ProdService {
	private ProdMapper prodMapper;

	public ProdService(ProdMapper prodMapper) {
		this.prodMapper = prodMapper;
	}
	
	public List<ProdVO> getProductList(){
		return prodMapper.findAllProduct();
	}
}

