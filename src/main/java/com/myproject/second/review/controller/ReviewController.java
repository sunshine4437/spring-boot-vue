package com.myproject.second.review.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.myproject.second.review.service.ReviewService;
import com.myproject.second.review.vo.ReviewVO;

@RestController
@RequestMapping(value = "api/review/*")
public class ReviewController {
	@Autowired
	private ReviewService reviewService;

	@GetMapping("/{num}")
	public List<ReviewVO> getReviewList(@PathVariable("num") int num) throws Exception {
		List<ReviewVO> list = reviewService.getReviewList(num);
		return list;
	}
}
