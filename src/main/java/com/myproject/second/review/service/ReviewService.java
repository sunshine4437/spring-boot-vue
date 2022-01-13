package com.myproject.second.review.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.myproject.second.review.mapper.ReviewMapper;
import com.myproject.second.review.vo.ReviewVO;

@Service
public class ReviewService {
	private ReviewMapper reviewMapper;

	public ReviewService(ReviewMapper reviewMapper) {
		this.reviewMapper = reviewMapper;
	}

	public List<ReviewVO> getReviewList(int num) {
		// TODO Auto-generated method stub
		return reviewMapper.findAllReview(num);
	}

}
