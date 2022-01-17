package com.myproject.second.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.myproject.second.product.service.ProdService;
import com.myproject.second.product.vo.ProdVO;

@RestController
@RequestMapping(value = "api/product/*")
public class ProdController {
	@Autowired
	private ProdService prodService;

	@GetMapping("/productDetail/{productno}")
	public ProdVO getProductList(@PathVariable("productno") int productno) throws Exception {
		return prodService.getProductList(productno);
	}
	
	@GetMapping("/productDetail/all")
	public List<ProdVO> getAllProductList() throws Exception {
		return prodService.getProductList();
	}
	
	@GetMapping("/productDetail/saleslist/{sellerid}")
	public List<ProdVO> getSalseList(@PathVariable("sellerid") String sellerid) throws Exception{
		return prodService.getSalseList(sellerid);
	}
	
	@GetMapping("/productDetail/bestImage/{productno}")
	public List<ProdVO> getAllProductImageList(@PathVariable("productno") int productno) throws Exception {
		return prodService.getProductImageList(productno);
	}

	@PostMapping("/insertProduct/{id}")
	public void insertProduct(@PathVariable("id") String id, @RequestParam String productname, @RequestParam int price, @RequestParam String option1, @RequestParam String option2, @RequestParam String imagename, @RequestParam String detailimagename) {
//	public void insertProdcut(@PathVariable("id") String id, @RequestParam String productname,@RequestParam int price) {
		System.out.println(id);
		System.out.println(productname);
		System.out.println(price);
		prodService.insertProdcut(id ,productname, price, option1, option2, imagename, detailimagename);
	}
}
