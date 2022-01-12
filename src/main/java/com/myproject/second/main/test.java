package com.myproject.second.main;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/main/*")
public class test {
	private int cnt =0;
	@GetMapping("/data")
	public int testData() {
		return cnt++;
	}
}
