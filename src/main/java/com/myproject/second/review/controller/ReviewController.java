package com.myproject.second.review.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.myproject.second.review.service.ReviewService;
import com.myproject.second.review.vo.ReviewVO;

@RestController
@RequestMapping(value = "api/review/*")
public class ReviewController {
	@Autowired
	private ReviewService reviewService;

	@GetMapping("/count/{productno}")
	public int reviewCount(@PathVariable("productno") int productno) throws Exception {
		return reviewService.reviewCount(productno);
	}

	@GetMapping("/getReview")
	public List<ReviewVO> getReviewList(@RequestParam("productno") int productno, @RequestParam("page") int page,
			@RequestParam("content") int content) throws Exception {
		return reviewService.getReviewList(productno, page, content);
	}
}
