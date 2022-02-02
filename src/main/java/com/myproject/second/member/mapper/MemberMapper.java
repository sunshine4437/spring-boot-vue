package com.myproject.second.member.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
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

	@Select("SELECT nickname from s_member where id = (SELECT sellerid from s_product where productno = #{productno})")
	String getNickname(int productno);

	@Update("update s_member set point = point - #{point} where id = #{id}")
	void updatePoint(@Param("id") String id, @Param("point") int point);

	@Update("update s_member set nickname = #{nickname} where id = #{id}")
	void updateNickname(@Param("id") String id, @Param("nickname") String nickname);

	@Update("update s_member set password = #{password} where id = #{id}")
	void updatePassword(@Param("id") String id, @Param("password") String password);

	@Update("update s_member set tel = #{tel} where id = #{id}")
	void updateTel(@Param("id") String id, @Param("tel") String tel);

	@Update("update s_member set zipcode = #{zipcode}, address = #{address}, detailaddr = #{detailaddr} where id = #{id}")
	void updateAddress(@Param("id") String id, @Param("zipcode") String zipcode, @Param("address") String address,
			@Param("detailaddr") String detailaddr);

	@Delete("delete from s_member where id = #{id}")
	void deleteMember(@Param("id") String id);
}
