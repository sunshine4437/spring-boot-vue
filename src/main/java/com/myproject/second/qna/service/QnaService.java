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
		// TODO Auto-generated method stub
		return qnaMapper.findAllQna(num);
	}
}