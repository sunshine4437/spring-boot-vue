package com.myproject.second.list.controller;

import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.myproject.second.list.mapper.ShopFileMapper;
import com.myproject.second.list.vo.ShopFile;

@RestController
@RequestMapping("/list/*")
public class ShoppingController {

	private ShopFileMapper mapper;


	public ShoppingController(ShopFileMapper mapper) {
		this.mapper = mapper;
	}

	private Map<String, ShopFile> shopMap;

	/*
	 * 
	 * @PostConstruct private void init() { shopMap =new HashMap<String,
	 * ShopFile>(); shopMap.put("1", new ShopFile("占싣듸옙母占�",12300 ,10 ,3000,"占쏙옙占쏙옙"));
	 * shopMap.put("2", new ShopFile("占쏙옙占쏙옙키",11300 ,10 ,2500,"占쏙옙占쏙옙"));
	 * shopMap.put("3", new ShopFile("퓨占쏙옙",10300 ,10 ,3000,"11占쏙옙占쏙옙"));
	 * shopMap.put("4", new ShopFile("占쏙옙占쏙옙",12000 ,10 ,2500,"占쏙옙占신삼옙"));
	 * shopMap.put("5", new ShopFile("占싣식쏙옙",12100 ,10 ,3000,"占싣몌옙占쏙옙")); }
	 */
	// 占쌘뤄옙 占쏙옙회
	@RequestMapping("/test/{title}")
	public ShopFile getShopFile(@PathVariable("title") String title) {
		return mapper.getShopFile(title);

	}

	// 占쏙옙占� 占쌘뤄옙 占쏙옙회
	@GetMapping("/test/all")
	public List<ShopFile> getShopAllFile() {
		return mapper.getShopAllFile();
	}

	// 占쏙옙占쏙옙占싹깍옙
	@PostMapping("/test/{title}")
	public void postShopFile(@PathVariable("title") String title, @RequestParam("price") int price,
			@RequestParam("rate") int rate, @RequestParam("delivery") int delivery,
			@RequestParam("vendor") String vendor) {
		ShopFile shopFile = new ShopFile(title, price, rate, delivery, vendor);
		shopMap.put(title, shopFile);
		mapper.postShopFile(title, price, rate, delivery, vendor);
	}

	// 占쏙옙占쏙옙占싹깍옙
	@PutMapping("/test/{title}")
	public void putShopFile(@PathVariable("title") String title, @RequestParam("price") int price,
			@RequestParam("rate") int rate, @RequestParam("delivery") int delivery,
			@RequestParam("vendor") String vendor) {
		ShopFile shopFile = shopMap.get(title);
		shopFile.setPrice(price);
		shopFile.setRate(rate);
		shopFile.setDelivery(delivery);
		shopFile.setVendor(vendor);
		mapper.putShopFile(title, price, rate, delivery, vendor);
	}

	// 占쏙옙占쏙옙
	@DeleteMapping("/user/{title}")
	public void deleteShopFile(@PathVariable("title") String title) {
		mapper.deleteShopFile(title);
	}

	

}
