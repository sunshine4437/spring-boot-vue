package com.myproject.second.qna.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.myproject.second.qna.vo.QnaVO;

@Mapper
public interface QnaMapper {
	@Select("select * from s_qna where productno = #{productno} order by qnano desc")
	List<QnaVO> findAllQna(@Param("productno") int productno);

	@Insert("insert into s_qna (qnano, productno, title, nickname) values (qna_seq.NEXTVAL, #{productno}, #{title}, #{nickname})")
	void addQna(@Param("productno") int productno, @Param("title") String title, @Param("nickname") String nickname);
}