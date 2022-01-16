package com.myproject.second.member.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.myproject.second.member.mapper.MemberMapper;
import com.myproject.second.member.vo.MemberVO;

@Service
public class MemberService {
	private MemberMapper memberMapper;

	public MemberService(MemberMapper memberMapper) {
		this.memberMapper = memberMapper;
	}


	public List<MemberVO> getAllMembers(){
		return memberMapper.findAll();
	}
		

	public MemberVO getMember(@Param("id") String id) {
		return memberMapper.findMember(id);
	}	
}
