package com.myproject.second.member.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.myproject.second.member.vo.MemberVO;

@Mapper
public interface MemberMapper {
	@Select("SELECT * from s_member")
	List<MemberVO> findAll();

	@Select("SELECT * from s_member where id = #{id}")
	MemberVO findMember(@Param("id") String id);

	@Select("SELECT nickname from s_member where id = (SELECT id from s_seller where productno = #{productno})")
	String getNickname(int productno);
	
	@Update("update s_member set point = point - #{point} where id = #{id}")
	void updatePoint(@Param("id") String id, @Param("point") int point);
}
