package com.myproject.second.test;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/test/*")
public class TestController {
	@RequestMapping("/test")
	public String home() {
		return "homesss";
	}
	
	@RequestMapping("/send")
	public void fdf(@RequestBody String str) {
		System.out.println(str);
	}
}
