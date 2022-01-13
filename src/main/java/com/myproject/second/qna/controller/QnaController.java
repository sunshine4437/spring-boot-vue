package com.myproject.second.qna.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.myproject.second.qna.service.QnaService;
import com.myproject.second.qna.vo.QnaVO;

@RestController
@RequestMapping(value = "api/product/*")
public class QnaController {
	@Autowired
	private QnaService qnaService;

	@GetMapping("/qna/{num}")
	public List<QnaVO> getQnaList(@PathVariable("num") int num) throws Exception {
		List<QnaVO> list = qnaService.getQnaList(num);
		return list;
	}
}
