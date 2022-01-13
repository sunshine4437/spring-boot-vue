package com.myproject.second.review.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.myproject.second.review.vo.ReviewVO;

@Mapper
public interface ReviewMapper {

	@Select("select * from s_review where productno = #{productno}")
	List<ReviewVO> findAllReview(@Param("productno") int productno);

}
