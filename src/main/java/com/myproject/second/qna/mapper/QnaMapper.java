package com.myproject.second.qna.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.myproject.second.qna.vo.QnaVO;

@Mapper
public interface QnaMapper {
	@Select("select * from s_qna where productno = #{productno}")
	List<QnaVO> findAllQna(@Param("productno") int productno);
}
