package com.myproject.second.qna.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.myproject.second.qna.mapper.QnaMapper;
import com.myproject.second.qna.vo.QnaVO;

@Service
public class QnaService {
	private QnaMapper qnaMapper;

	public QnaService(QnaMapper qnaMapper) {
		this.qnaMapper = qnaMapper;
	}

	public List<QnaVO> getQnaList(int num) {
		List<QnaVO> list = qnaMapper.findAllQna(num).subList(0, 10);
		return list;
	}

	public void addQna(int productno, String title, String id) {
		// TODO Auto-generated method stub
		qnaMapper.addQna(productno, title, id);
	}
}