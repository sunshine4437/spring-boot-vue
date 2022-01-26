package com.myproject.second.qna.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.myproject.second.qna.service.QnaService;
import com.myproject.second.qna.vo.QnaVO;

@RestController
@RequestMapping(value = "api/qna/*")
public class QnaController {
	@Autowired
	private QnaService qnaService;

	@GetMapping("/{productno}")
	public List<QnaVO> getQnaList(@PathVariable("productno") int productno) throws Exception {
		List<QnaVO> list = qnaService.getQnaList(productno);
		return list;
	}
	
	@PostMapping("/{productno}")
	public void inserQna(@PathVariable("productno") int productno, @RequestParam String title, @RequestParam String id) throws Exception {
		qnaService.addQna(productno, title, id);
	}
}