package com.myproject.second.product.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.myproject.second.product.mapper.ProdMapper;
import com.myproject.second.product.vo.ProdVO;

@Service
public class ProdService {
	private ProdMapper prodMapper;

	public ProdService(ProdMapper prodMapper) {
		this.prodMapper = prodMapper;
	}

	public List<ProdVO> getProductList() {
		return prodMapper.findAllProduct();
	}

	public List<ProdVO> getSalseList(String sellerid) {
		return prodMapper.findSalseList(sellerid);
	}

	public ProdVO getProductList(int productno) {
		return prodMapper.findProduct(productno);
	}

	public String getOption1(int productno) {
		return prodMapper.findOption1(productno);
	}

	public List<ProdVO> getProductImageList(int productno) {
		List<ProdVO> list = prodMapper.findAllProductImage(productno).subList(0, 6);
		return list;
	}

	public void insertProduct(String id, String productname, int price, String option1, String option2,
			String imagename, String detailimagename) {
		prodMapper.insertProduct(id, productname, price, option1, option2, imagename, detailimagename);

		return prodMapper.getProductNo();
	}

}
