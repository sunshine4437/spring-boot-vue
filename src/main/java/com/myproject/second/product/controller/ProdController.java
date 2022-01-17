package com.myproject.second.product.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

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
		prodService.insertProduct(id ,productname, price, option1, option2, imagename, detailimagename);
	}
	
//	@PostMapping("/upload/img")
//	public void productImageUpload(@RequestParam("fileList") List<MultipartFile> fileList) {
//		int productno = prodService.getCount()+1;
//		File file = new File("./src/main/resources/images/product/"+productno);
//		// ���丮 ����
//		boolean directoryCreated = file.mkdir();
//
//		try {
//			for (MultipartFile multipartFile : fileList) {
//				FileOutputStream writer = new FileOutputStream("./src/main/resources/images/product/" + multipartFile.getOriginalFilename());
//				System.out.println(multipartFile.getOriginalFilename());
//				writer.write(multipartFile.getBytes());
//				writer.close();
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
}
