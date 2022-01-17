package com.myproject.second.member.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.myproject.second.member.vo.MemberVO;

@Mapper
public interface MemberMapper {
	@Select("SELECT * from s_member")
	List<MemberVO> findAll();

	@Select("SELECT * from s_member where id = #{id}")
	MemberVO findMember(@Param("id") String id);
}
